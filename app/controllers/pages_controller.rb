class PagesController < ApplicationController

  def home
  	if member_signed_in?
  		@member = Member.find(current_member)
  		@opentasks = Task.where("member_id = ? and achievedate is ? and duedate <= ?", current_member, nil, Date.today).order("duedate ASC").limit(3)
  		@goals_next30 = Goal.where("member_id = ? and achievedate is ?", current_member, nil).limit(3).order("goaldate ASC")
      @goals = Goal.find_all_by_member_id(current_member)
      @affirmations = Affirmation.find_all_by_member_id(current_member)
  	else
  	@goals_next30 = Goal.where("image != ?", "").limit(4)
  	@tasks = Task.limit(10)
  	@affirmations = Affirmation.limit(10)
  end
  end

  def contact
  end

end
