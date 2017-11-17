# Preview all emails at http://localhost:3000/rails/mailers/voip_mailer
class VoipMailerPreview < ActionMailer::Preview

  def welcome_email
    VoipMailer.welcome_email(Voip.first)
  end

  def new_signup_email
    VoipMailer.new_signup_email(Voip.first)
  end

end
