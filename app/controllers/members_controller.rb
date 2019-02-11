class MembersController < ApplicationController
  before_action :authenticate_member!

  def show
  end

  private
  def authenticate_member!
    unless @current_user && @current_user.role == 'member'
      sign_out(@current_user)
      redirect_to '/'
      return
    end
  end

end
