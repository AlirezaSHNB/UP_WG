class HomeController < ApplicationController
  before_action :require_login

  def home
  end

  private

  def require_login
    redirect_to login_path unless logged_in?
  end
end
