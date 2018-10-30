class HighlightsController < ApplicationController

  def new
    @highlight = Highlight.new

  end

  def create
    @highlight = Highlight.create(highlight_params)
    redirect_to highlights_path 
  end

  def index
    if params[:user_id]
    @highlights = User.find(params[:user_id]).highlights
  else
    @highlights = Highlight.all
  end
  end


private

  def highlight_params
    params.require(:highlight).permit(:content, :user_id)
  end



end
