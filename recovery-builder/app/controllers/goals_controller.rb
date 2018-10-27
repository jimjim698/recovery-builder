class GoalsController < ApplicationController
  before_action :is_manager
  skip_before_action :is_manager, only:[:show, :index]

  def new
    @goal = Goal.new
  end

  def create
    binding.pry
    raise params.inspect
  end

end
