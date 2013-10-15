class PagesController < ApplicationController
  def home
  	if member_signed_in?
  		@member = Member.find(current_member)
  	end
  	@goals = Goal.limit(2)
  end

  def contact
  end

end
