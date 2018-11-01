module UsersHelper

def check_errors
  if !@user.errors.blank?
    @user.errors.full_messages.first
  end
end

#def current_user
#  @user= User.find(session[:user_id])
# end
def current_user_house
  current_user.house.id
end

def this_current_user
  current_user == @user
  end
  

end
