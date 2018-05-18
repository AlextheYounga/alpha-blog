class AddUpdatedtimeToStocks < ActiveRecord::Migration
  def change
    add_column :stocks, :latest_update, :datetime
  end
end
