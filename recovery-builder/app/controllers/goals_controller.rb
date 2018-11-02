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
    flash[:message] = "New Goal Has Been Added"
    redirect_to house_path(@goal.house_id)
end

  def show
    @goal = Goal.find(params[:id])
    @completion = @goal.completions.build(user_id: session[:user_id])
  end

  def index
    @goals  = current_user.house.goals
  end


  private

  def goal_params
    params.require(:goal).permit(:name, :point_value, :house_id)
  end

end
