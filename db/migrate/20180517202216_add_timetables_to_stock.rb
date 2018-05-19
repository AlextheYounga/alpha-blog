class AddTimetablesToStock < ActiveRecord::Migration
  def change
    add_column :stocks, :latest_time, :datetime
  end
end
