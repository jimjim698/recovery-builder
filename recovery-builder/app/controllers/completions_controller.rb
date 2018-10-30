class CompletionsController < ApplicationController

  def create
    completion = Completion.create(completion_params)
    message = completion.complete_goal
    redirect_to user_path(session[:user_id]), flash: {message: message}
end


  private

  def completion_params
    params.require(:completion).permit(:user_id, :goal_id)
  end

end
