class Affirmation < ActiveRecord::Base
  attr_accessible :title, :user_id

  belongs_to :member
  
end
