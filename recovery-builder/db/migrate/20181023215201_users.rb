class Users < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :house_id
      t.boolean :manager, default: false
      t.boolean :employed, default: false
      t.boolean :assignment_1, default: false
      t.boolean :assignment_2, default: false
      t.integer :points, default: 0
      t.string :password_digest
    end
  end
end
