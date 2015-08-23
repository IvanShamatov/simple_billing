class CreateBilledIssues < ActiveRecord::Migration
  def change
    create_table :billed_issues do |t|
      t.integer :bill_id
      t.integer :issue_id
      t.decimal :rate
      t.decimal :quantity
      t.decimal :tax
      t.decimal :sum
    end
  end
end
