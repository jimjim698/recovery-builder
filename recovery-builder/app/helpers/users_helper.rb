module UsersHelper

def check_errors
  if !@user.errors.blank?
    @user.errors.full_messages.first
  end
end

def current_user_house
  current_user.house
end

def this_current_user(user)
  current_user == user
  end

  def correct_view(user)
    current_user_house && this_current_user(user)
  end


end
