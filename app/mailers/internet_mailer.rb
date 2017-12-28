class InternetMailer < ApplicationMailer

  default from: 'orders@freecableinstall.com'

  def welcome_email(internet)
    @internet = internet
    @url  = 'http://freecableinstall.com'
    mail(to: @internet.email, subject: 'Welcome to My Awesome Site')
  end

  def new_signup_email(internet)
    @internet = internet
    @url  = 'http://freecableinstall.com'
    mail(to: 'john@maxsip.com', subject: 'Welcome to My Awesome Site')
  end

end
