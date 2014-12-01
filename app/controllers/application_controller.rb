class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_filter :authorize
  protect_from_forgery with: :null_session
  helper_method :current_user

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id] 
  end

private


# protected

  def authorize
    redirect_to login_path, alert: "Not authorized" if current_user.nil?
  end

end
