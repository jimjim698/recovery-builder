class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :name
      t.integer :point_value
      t.integer :house_id

      t.timestamps null: false
    end
  end
end
