class GoalsController < ApplicationController


  def new
    @goal = Goal.new
  end

  def create
    binding.pry
    raise params.inspect
  end

end
