class AddMemberIdToGoals < ActiveRecord::Migration
  def change
    add_column :goals, :member_id, :integer
    add_column :affirmations, :member_id, :integer
  end
end
