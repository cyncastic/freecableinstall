class ResellerMailer < ApplicationMailer

  default from: 'resellers@freecableinstall.com'

  def welcome_email(reseller)
    @reseller = reseller
    @url  = 'http://freecableinstall.com'
    mail(to: @reseller.email, subject: 'Welcome to My Awesome Site')
  end

  def new_signup_email(reseller)
    @reseller = reseller
    @url  = 'http://freecableinstall.com'
    mail(to: 'john@maxsip.com', subject: 'Welcome to My Awesome Site')
  end

end
