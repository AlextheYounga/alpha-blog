require 'stock_quote'

class StocksController < ApplicationController
  
  def search
    if params[:stock].present?
      @stock = Stock.new_from_lookup(params[:stock])
        if @stock
          render 'pages/playground'
        else
          flash[:danger] = "You have entered an incorrect symbol"
          redirect_to playground_path
        end
      
        else
          flash[:danger] = "You have entered an empty search string"
          redirect_to playground_path
        
    end
  end
end