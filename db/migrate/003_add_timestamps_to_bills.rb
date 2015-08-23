class AddTimestampsToBills < ActiveRecord::Migration
  def change
    add_column :bills, :created_at, :timestamp
    add_column :bills, :updated_at, :timestamp
  end
end
