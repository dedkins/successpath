class PagesController < ApplicationController
  def home
  	if member_signed_in?
  		@member = Member.find(current_member)
  		@opentasks = Task.where("member_id = ? and achievedate is ? and duedate <= ?", current_member, nil, Date.today).order("duedate ASC")
  	end
  	@goals_next30 = Goal.limit(2)
  end

  def contact
  end

end
