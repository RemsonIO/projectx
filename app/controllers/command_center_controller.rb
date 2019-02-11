class CommandCenterController < ApplicationController

  def super_admin
  end

  private
  def authenticate_admin
    unless @current_user && @current_user.role == 'super_admin'
      sign_out(@current_user)
    end
  end

end
