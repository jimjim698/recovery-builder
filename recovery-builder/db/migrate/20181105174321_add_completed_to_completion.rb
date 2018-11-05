class AddCompletedToCompletion < ActiveRecord::Migration
  def change
    add_column :completions, :completed, :boolean
  end
end
