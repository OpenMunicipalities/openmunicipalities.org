class UserMailer < ActionMailer::Base
  default from: "neel@openmunicipalities.org"

  def welcome_email(user)
   @user =user
   @url ="http://www.openmunicipalities.org"
   mail(:to=> user.email,:subject => "Welcome to OpenMunicipalities.org")
  end


end
