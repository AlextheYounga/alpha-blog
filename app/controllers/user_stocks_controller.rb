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
  
end
