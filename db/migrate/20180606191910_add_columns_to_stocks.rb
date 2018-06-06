class AddColumnsToStocks < ActiveRecord::Migration
  def change
    add_column :stocks, :latest_price, :decimal
    add_column :stocks, :company_name, :string
    add_column :stocks, :symbol, :string
    add_column :stocks, :latest_time, :datetime
    add_column :stocks, :latest_update, :datetime
  end
end
