class Goal < ActiveRecord::Base
  attr_accessible :description, :goaldate, :image, :name, :priority, :url, :user_id, :achievedate, :progress

  belongs_to :member
  
end
