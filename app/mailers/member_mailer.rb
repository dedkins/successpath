class MemberMailer < ActionMailer::Base
  default :from => 'successpath@edkinsgroup.com'
  layout 'member_mailer'

  include SendGrid
  sendgrid_category :use_subject_lines
  sendgrid_enable   :ganalytics, :opentrack

  def welcome_email(member)
    @member = member
    @url  = "http://www.successpath.me/members/sign_in"
    mail(:to => member.email, :bcc => 'dedkins@edkinsgroup.com', :subject => "Welcome Aboard SuccessPath!")
  end

end