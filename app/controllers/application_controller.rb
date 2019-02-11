class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :get_current_user

  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = "Access denied."
    redirect_to '/'
  end

  private
  def get_current_user
    current_user
  end



end
