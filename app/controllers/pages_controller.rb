class PagesController < ApplicationController
  def home
  	if member_signedin?
  		@member = Member.find(current_member)
  	end
  end

  def contact
  end

end
