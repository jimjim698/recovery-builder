class Manager::HousesController <ApplicationController
    before_action :is_manager
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
    binding.pry

    @house = House.find(params[:id])
  end



  private

  def is_manager
    return head(:forbidden) unless current_user.manager

  end


end
