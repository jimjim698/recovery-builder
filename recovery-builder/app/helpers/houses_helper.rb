module HousesHelper

def display_residents(house)
  house.users.each do |u|
  u.name
  end
end


end
