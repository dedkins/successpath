class UserMailer < ActionMailer::Base
  default :from => 'successpath@edkinsgroup.com'
  layout 'user_mailer'

  def welcome_email(user)
    @member = member
    @url  = "http://www.successpath.me/members/sign_in"
    mail(:to => user.email, :bcc => 'dedkins@edkinsgroup.com', :subject => "Welcome Aboard!")
  end

end