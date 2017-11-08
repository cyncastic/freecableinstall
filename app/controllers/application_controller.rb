class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  before_action :authorize

  def hello
    render html: "hello, world!"
  end

  protected

  def authorize
    unless User.find_by_id(session[:user_id])
      redirect_to login_path, notice: "You need to log in"
    end
  end

end
