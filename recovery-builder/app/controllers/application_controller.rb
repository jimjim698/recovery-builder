class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def home
    render layout: "root_layout"
  end

  def unauthorized
  end


  def current_user
    User.find(session[:user_id])
  end

  def is_manager
    current_user.manager || flash[:notice] = "You are not authorized to view this content"
    redirect_to unauthorized_path
  end

end
