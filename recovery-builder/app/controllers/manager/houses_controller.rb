class Manager::HousesController <ApplicationController
    before_action :is_manager
  def new
    @house = House.new
  end

  def create
    raise params.inpsect
  end 




  private

  def is_manager
    return head(:forbidden) unless current_user.manager

  end


end
