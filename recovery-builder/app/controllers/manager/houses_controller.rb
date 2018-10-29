class Manager::HousesController <ApplicationController
    before_action :is_manager
    skip_before_action :is_manager, only:[:show]
  def new
    @house = House.new
  end

  def create
    @house = House.new(name:params[:name])
    @house.save
    redirect_to manager_houses_path

  end

  def index
    @houses = House.all
  end

  def show


    @house = House.find(params[:id])
  end


end
