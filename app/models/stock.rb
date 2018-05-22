class Stock < ActiveRecord::Base
  
  has_many :user_stocks
  has_many :users, through: :user_stocks
  
  def self.new_from_lookup(symbol)
    begin
      stock = StockQuote::Stock.quote(symbol)
      new(company_name: stock.company_name,
          symbol: stock.symbol,
          latest_price: stock.latest_price,
          latest_time: stock.latest_time)
    rescue Exception => e
      return nil
    end
  end
  
  def self.find_by_symbol(symbol)
    where(symbol: stock_symbol).first
  end
  
end
