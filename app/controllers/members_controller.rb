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
    if current_member.admin?
  	 @members = Member.all
    else
      redirect_to root_path, :alert => 'Oops...looks like you stumbled onto a non-existing page!'
    end
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