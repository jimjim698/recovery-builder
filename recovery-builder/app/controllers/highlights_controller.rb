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
    respond_to do |f|
      f.json { render json: @highlight}
      f.html {redirect_to user_highlights_path(@user)}
    end

  end

  def index
    
    if params[:user_id]
      @user = User.find(params[:user_id])
      @highlights = @user.highlights
      respond_to do |f|
        f.json {render json: @highlights}
        f.html{render :index}
      end
    elsif params[:house_id]
      @house = House.find(params[:house_id])
      @highlights = @house.highlights
    else
      @highlights = Highlight.all
      respond_to do |f|
        f.json {render json: @highlights}
        f.html
      end
    end
  end


private

  def highlight_params
    params.require(:highlight).permit(:content,:user_id)
  end



end
