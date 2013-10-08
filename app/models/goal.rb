class Goal < ActiveRecord::Base
  attr_accessible :description, :goaldate, :image, :name, :priority, :url, :user_id, :achievedate

  belongs_to :user
  
end
