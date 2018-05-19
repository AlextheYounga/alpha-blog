class Stock < ActiveRecord::Base
  
  def self.new_from_lookup(symbol)
    stock = StockQuote::Stock.quote(symbol)
    new(company_name: stock.company_name,
        symbol: stock.symbol,
        latest_price: stock.latest_price,
        latest_time: stock.latest_time)
  end
  
end
