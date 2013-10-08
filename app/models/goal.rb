class Goal < ActiveRecord::Base
  attr_accessible :description, :goaldate, :image, :name, :priority, :url, :user_id, :achievedate
end
