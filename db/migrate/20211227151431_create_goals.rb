class CreateGoals < ActiveRecord::Migration[6.1]
  def change
    create_table :goals do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
