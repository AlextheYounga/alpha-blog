class UserStocksController < ApplicationController
  
  def create
    stock = Stock.find_by_symbol(params[:stock_symbol])
      if stock.blank?
        stock = Stock.new_from_lookup(params[:stock_symbol])
        stock.save
      end
      @user_stock = UserStock.create(user: current_user, stock: stock)
      flash[:success] = "Stock #{@user_stock.stock.company_name} was successfully added to watchlist"
      redirect_to playground_path
  end
  
  def destroy
    stock = Stock.find(params[:id])
    @user_stock = UserStock.where(user_id: current_user.id, stock_id: stock.id).first
    @user_stock.destroy
    flash[:notice] = "Stock was successfully destroyed"
    redirect_to playground_path
  end
  
end
