class Member < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :actiontitle, 
  :mainlifetitle, :mainlifequote, :actualcf, :desiredcf, :actualassets, :desiredassets, 
  :financialstatementquote, :actionquote
  # attr_accessible :title, :body

  has_many :goals
  has_many :affirmations
  has_many :tasks

  def update_with_password(params={}) 
    current_password = params.delete(:current_password)
    if params[:password].blank? 
      params.delete(:password) 
      params.delete(:password_confirmation) if params[:password_confirmation].blank? 
    end 
    update_attributes(params) 
  end
  
end
