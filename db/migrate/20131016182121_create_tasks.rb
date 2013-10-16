class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :member_id
      t.integer :goal_id
      t.string :name
      t.date :duedate
      t.string :achievedate
      t.string :date

      t.timestamps
    end
  end
end
