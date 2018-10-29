class GoalsController < ApplicationController
  before_action :is_manager
  skip_before_action :is_manager, only:[:show, :index]

  def new
    if current_user.house_id.nil?
      flash[:notice] = "You must belong to a house before you can create goals"
      redirect_to edit_user_path(session[:user_id])
    else
    @goal = Goal.new
  end
  end

  def create
    @goal = Goal.new(goal_params)
    @goal.save
    redirect_to manager_house_path(@goal.house_id)
  end

  def show
    @goal = Goal.find(params[:id])
  end

  def index
    @goals  = current_user.goals
  end


  private

  def goal_params
    params.require(:goal).permit(:name, :point_value, :house_id)
  end

end
