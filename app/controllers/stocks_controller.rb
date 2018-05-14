require 'stock_quote'

class StocksController < ApplicationController
  
  def watchlist
    stocks = StockQuote::Stock.quote("aapl")
    
    @latest_price = stocks.latest_price
  end
  
end