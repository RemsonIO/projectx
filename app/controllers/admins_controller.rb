class AdminsController < ApplicationController
  before_action :authenticate_admin!


  def show
  end

  private
  def authenticate_admin!
    unless @current_user && (@current_user.role == 'admin' || @current_user.role == 'super_admin')
      sign_out(@current_user)
      redirect_to '/'
      return
    end
  end

end
