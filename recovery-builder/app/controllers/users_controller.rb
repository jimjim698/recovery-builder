class UsersController < ApplicationController
before_action :is_manager, only:[:edit]
layout 'root_layout', except:[:show, :edit]

  def new
    @houses = House.all
    @user = User.new
  end

  def create
    @houses = House.all 
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
    @houses = House.all
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
