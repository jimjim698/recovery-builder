class CreateCompletions < ActiveRecord::Migration
  def change
    create_table :completions do |t|
      t.integer :goal_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
