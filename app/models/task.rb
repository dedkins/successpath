class Task < ActiveRecord::Base
  attr_accessible :achievedate, :date, :duedate, :goal_id, :member_id, :name

  belongs_to :goal
  belongs_to :member

  accepts_nested_attributes_for :goal, :member

end
