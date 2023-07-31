class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in?, :admin?

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end

  def admin?
    logged_in? && current_user.role == 'admin'
  end

  # Add any other role-specific methods as needed
end
