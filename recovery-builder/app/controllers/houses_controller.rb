class HousesController < ApplicationController
      before_action :is_manager
      skip_before_action :is_manager, only:[:show, :index]
    def new
      @house = House.new
    end

    def create
      @house = House.new(house_params)
      @house.save
      redirect_to houses_path
    end

    def index
      @houses = House.all
    end

    def show
      @house = House.find(params[:id])
      @mentors = @house.users.mentors
    end

    private

    def house_params
      params.require(:house).permit(:name)
    end


  end
