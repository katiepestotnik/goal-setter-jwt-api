class CreateUpdates < ActiveRecord::Migration[6.1]
  def change
    create_table :updates do |t|
      t.string :actions
      t.integer :self_evaluation
      t.boolean :completed
    end
  end
end
