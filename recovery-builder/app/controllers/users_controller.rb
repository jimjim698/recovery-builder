class UsersController < ApplicationController
before_action :is_manager, only:[:edit]
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.house_id = params[:house][:id]
    if @user.save
    session[:user_id] = @user.id
    redirect_to user_path(@user)
  else
    render :new
  end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit 
    @user = User.find(params[:id])
  end 

  def update 
    @user = User.find(params[:id])
    @user.update(user_params)
    @user.house_id = params[:house][:id]
    @user.save 
    redirect_to user_path(@user)

  end 



  private

  def user_params
    params.require(:user).permit(:name, :password, :manager, :house_id)
  end

end
