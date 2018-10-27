class GoalsController < ApplicationController
  before_action :is_manager
  skip_before_action :is_manager, only:[:show, :index]

  def new
    @goal = Goal.new
  end

  def create
    @goal = Goal.new(goal_params)
    @goal.save
    redirect_to manager_house_path(@goal.house_id)
  end

  def show
    @goal = Goal.find(params[:id])
  end 


  private

  def goal_params
    params.require(:goal).permit(:name, :point_value, :house_id)
  end

end
