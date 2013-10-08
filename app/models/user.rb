class User < ActiveRecord::Base
  attr_accessible :email, :name

  has_many :goals
  has_many :affirmations
  
end
