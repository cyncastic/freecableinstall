# Preview all emails at http://localhost:3000/rails/mailers/internet_mailer
class InternetMailerPreview < ActionMailer::Preview

  def welcome_email
    InternetMailer.welcome_email(Internet.first)
  end

  def new_signup_email
    InternetMailer.new_signup_email(Internet.first)
  end

end
