class VoipMailer < ApplicationMailer

  default from: 'orders@freecableinstall.com'

  def welcome_email(voip)
    @voip = voip
    @url  = 'http://freecableinstall.com'
    mail(to: @voip.email, subject: 'Welcome to My Awesome Site')
  end

end
