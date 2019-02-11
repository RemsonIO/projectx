class PagesController < ApplicationController
  # load_and_authorize_resource
  #
  def index
    case @current_user.role
    when 'super_admin'
      return redirect_to '/admin'
    when 'admin'
      return redirect_to root_admin_path
    when 'member'
      return redirect_to root_member_path
    else
      sign_out(@current_user)
    end
  end

end
