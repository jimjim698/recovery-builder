module UsersHelper

def check_errors
  if !@user.errors.blank?
    @user.errors.full_messages.first
  end
end

end 
