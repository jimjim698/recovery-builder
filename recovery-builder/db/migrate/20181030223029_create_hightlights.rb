class CreateHightlights < ActiveRecord::Migration
  def change
    create_table :hightlights do |t|
      t.text :content 

      t.timestamps null: false
    end
  end
end
