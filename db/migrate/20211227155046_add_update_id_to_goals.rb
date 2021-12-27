class AddUpdateIdToGoals < ActiveRecord::Migration[6.1]
  def change
    add_column :goals, :update_id, :integer
  end
end
