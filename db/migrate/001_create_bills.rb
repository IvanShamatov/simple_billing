class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.integer :status
      t.decimal :total_sum
    end
  end
end
