class RegistrationsController < Devise::RegistrationsController


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

  def edit
  	super
  end

  def update
  	super
  end

end