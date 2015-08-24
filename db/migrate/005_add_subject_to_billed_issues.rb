class AddSubjectToBilledIssues < ActiveRecord::Migration
  def change
    add_column :billed_issues, :subject, :string
    add_column :billed_issues, :units, :string
  end
end
