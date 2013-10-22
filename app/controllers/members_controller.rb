class MembersController < ApplicationController
  def new
    super
  end

  def create
    @member = Member.new(params[:member])

    if @member.save!
      MemberMailer.welcome_email(@member).deliver
      sign_in_and_redirect(:member, @member) 
    end
  end

  def update
    super
  end

  def index
  	@members = Member.all
  end

  def destroy
  	@member = Member.find(params[:id])
    @member.destroy

    respond_to do |format|
      format.html { redirect_to members_path }
      format.json { head :no_content }
  	end
  end

end 