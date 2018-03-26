class StocksController < ApplicationController
  
  def quote
    puts response.body
  end
  
end