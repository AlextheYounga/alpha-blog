require 'stock_quote'

class StocksController < ApplicationController
  
  def search
    if params[:symbol].present?
      @stock = Stock.new_from_lookup(params[:stock])
      render 'pages/playground'
      
    else
      flash[:danger] = "You have entered an empty search string"
      redirect_to playground_path
    end
  end
end