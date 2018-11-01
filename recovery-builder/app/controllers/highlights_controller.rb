class HighlightsController < ApplicationController

  def new
    @highlight = Highlight.new
    @user = User.find(params[:user_id])

  end

  def create
    @user = User.find(params[:user_id])
    @highlight = Highlight.create(highlight_params)
    @highlight.user_id = @user.id
    @highlight.save 

    redirect_to user_highlights_path(@user)
  end

  def index

    if params[:user_id]
      @user = User.find(params[:user_id])
      @highlights = @user.highlights
  else
    @highlights = Highlight.all
  end
  end


private

  def highlight_params
    params.require(:highlight).permit(:content,:user_id)
  end



end
