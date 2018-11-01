
class SessionsController < ApplicationController
  #skip_before_action :verify_authenticity_token, :only=> :create
  skip_before_action :authentication_required
 layout 'sessions_layout'
  def new

  end

  def create
    if request.env["omniauth.auth"]
      @user = User.find_or_create_by(:uid=> auth[:uid]) do |user|
        user.password_digest ||= user.password_digest = SecureRandom.hex
        user.name = auth[:info][:name]
        user.save
      end
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else

    @user = User.find_by(name: params[:name])
      if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect_to user_path(@user)
    else
      redirect_to login_path
    end
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
