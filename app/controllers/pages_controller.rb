class PagesController < ApplicationController
  def home
  	@member = Member.find(current_member)
  end

  def contact
  end

end
