module HousesHelper

#def display_residents(house)
  #house.users.each do |u|
#  u.name
  #end
#end

def display_residents(house)
  house.users.each do |u|
  "<p><h5> #{link_to u.name, user_path(u)} has #{u.points} points</h5></p>"
  end
end


end
