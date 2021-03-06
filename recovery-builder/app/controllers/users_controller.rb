class UsersController < ApplicationController
before_action :is_manager, only:[:edit]
skip_before_action :authentication_required, only:[:new, :create]
layout 'root_layout', except:[:show, :edit, :unassigned]

  def new
    @houses = House.all
    @user = User.new
  end

  def create
    @houses = House.all
    @user = User.new(user_params)
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
    @user.save
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    @user.save
    redirect_to user_path(@user)
  end

  def unassigned
    @unassigned_users = User.house_not_assigned
  end

  def mentors
    @mentors = User.mentors
    render layout: 'sessions_layout'
  end

  def destroy
    @user = User.find(params[:id]).destroy
    redirect_to house_path(current_user)
  end



  private

  def user_params
    params.require(:user).permit(:name, :password, :manager, :house_id)
  end

end
