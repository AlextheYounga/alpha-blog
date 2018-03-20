class Stock < ActiveRecord::Base
  
  def self.new_from_lookup(ticker_symbol) 
    #"self" = class level method, not a method that requires an object
    # use whenever you are not working with an instance variable
    begin
      looked_up_stock = StockQuote::Stock.quote(ticker_symbol)
      price = strip_commas(looked_up_stock.l)
      new(name: looked_up_stock.name, ticker: looked_up_stock.symbol, last_price: price)  #.l = last price
      rescue Exception => e #this catches when an incorrect stock is searched
        return nil
    end
  end
  
  def self.strip_commas(number)
    number.gsub(",", "")
    #gsub - first argument passed in is what you want to remove
    #second argument passed in is what you want to replace it with
  end
  
end
