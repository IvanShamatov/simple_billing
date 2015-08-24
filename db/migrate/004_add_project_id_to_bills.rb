class AddProjectIdToBills < ActiveRecord::Migration
  def change
    add_column :bills, :project_id, :integer
  end
end
