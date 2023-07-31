class AdminController < ApplicationController
  before_action :authorize_admin

  def index
    # Only admins can access this action
  end

  private

  def authorize_admin
    redirect_to root_path, alert: 'Unauthorized' unless admin?
  end
end
