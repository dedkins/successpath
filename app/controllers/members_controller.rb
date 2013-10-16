class MembersController < ApplicationController
  def new
    super
  end

  def create
    super
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