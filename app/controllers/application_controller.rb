class ApplicationController < ActionController::Base
  protect_from_forgery

  	def after_sign_up_path_for(resource)
  
  		edit_member_registration_path(resource)

	end

end
