class AddLatestPriceToStocks < ActiveRecord::Migration
  def change
    add_column :stocks, :latest_price, :decimal
    add_column :stocks, :company_name, :string
    add_column :stocks, :symbol, :string
    remove_column :stocks, :ticker, :string
    remove_column :stocks, :name, :string
    remove_column :stocks, :last_price, :decimal
    remove_column :stocks, :created_at, :datetime
    remove_column :stocks, :updated_at, :datetime
  end
end
