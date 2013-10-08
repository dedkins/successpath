class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.integer :user_id
      t.string :name
      t.string :description
      t.date :goaldate
      t.string :image
      t.string :url
      t.integer :priority
      t.date :achievedate

      t.timestamps
    end
  end
end
