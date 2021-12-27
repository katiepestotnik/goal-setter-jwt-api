class AddGoalIdToUpdates < ActiveRecord::Migration[6.1]
  def change
    add_column :updates, :goal_id, :integer
  end
end
