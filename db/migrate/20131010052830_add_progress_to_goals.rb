class AddProgressToGoals < ActiveRecord::Migration
  def change
    add_column :goals, :progress, :decimal, :precision => 6
  end
end
