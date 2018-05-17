require 'stock_quote'

class StocksController < ApplicationController
  
  def search
   @stock = Stock.new_from_lookup(params[:stock])
   render json: @stock
  end
  
end