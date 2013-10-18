class PagesController < ApplicationController
  def home
  	if member_signed_in?
  		@member = Member.find(current_member)
  		@opentasks = Task.where("member_id = ? and achievedate is ? and duedate <= ?", current_member, nil, Date.today).order("duedate ASC").limit(4)
  		@goals_next30 = Goal.where("member_id = ? and achievedate is ?", current_member, nil).limit(4)
  	end
  	@goals_next30 = Goal.limit(4).order("created_at DESC")
  end

  def contact
  end

end
