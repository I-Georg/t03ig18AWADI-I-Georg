class ApplicationController < ActionController::Base
#https://stackoverflow.com/questions/40794650/devise-add-admin-role
 #protect_from_forgery
def authenticate_admin!
  authenticate_user!
  redirect_to '/', status: :forbidden unless current_user.admin?
end
end
