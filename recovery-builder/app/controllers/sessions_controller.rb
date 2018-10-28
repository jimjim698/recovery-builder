class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token, :only=> :create
 layout 'sessions_layout'
  def new
  end

  def create
    if params[:provider]
      @user = User.find_or_create_by(:provider=> auth[:provider], :uid=> auth[:uid]) do |user|
        @user.name = auth[:info][:name]
        session[:user_id] = @user.id
      end 
    else
    @user = User.find_by(name: params[:name])
      if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect_to user_path(@user)
    else
      redirect_to login_path
    end
    redirect_to user_path(@user)
  end
end 

  def destroy
    session.delete :user_id
    redirect_to '/'
  end

  private 
  def auth 
    request.env["omniauth.auth"]
  end 


end
