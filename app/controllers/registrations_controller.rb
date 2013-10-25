class RegistrationsController < Devise::RegistrationsController


  def new
  	super
  end

  def create
  	@member = Member.new(params[:member])
	
    respond_to do |format|
      if @member.save
    		MemberMailer.welcome_email(@member).deliver
    		sign_in_and_redirect(:member, @member)
      else
          format.html { render action: "new" }
          format.json { render json: @member.errors, status: :unprocessable_entity }
    	end
    end
  end

  def edit
  	super
  end

  def update
  	super
  end

end