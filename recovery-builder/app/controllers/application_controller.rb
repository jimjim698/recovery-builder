class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authentication_required
  skip_before_action :authentication_required, only:[:home]
  helper_method :current_user
  helper_method :logged_in


  def home
    if logged_in
      redirect_to user_path(current_user)
    else
    render layout: "root_layout"
    end 
  end

  def unauthorized
  end


  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def is_manager
    if !current_user.manager
       flash[:notice] = "You are not authorized to view this content"
    redirect_to unauthorized_path
    end
  end

  def logged_in
    !!current_user
  end

  def authentication_required
    if !logged_in
      redirect_to root_path
    end
  end

end
