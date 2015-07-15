class AddAssigneeToTreasures < ActiveRecord::Migration
  def change
    add_column :treasures, :assignee, :string
  end
end
