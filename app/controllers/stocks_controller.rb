require 'stock_quote'

class StocksController < ApplicationController
  
  def search
    if params[:stock].blank?
      flash.now[:danger] = "You have entered an empty search string"
    else
      @stock = Stock.new_from_lookup(params[:stock])
      flash.now[:danger] = "You have entered an incorrect symbol" unless @stock
    end
    render partial: 'layouts/result'
  
  end
end