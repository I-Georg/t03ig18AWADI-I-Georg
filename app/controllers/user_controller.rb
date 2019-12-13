class UserController < ApplicationController
#https://stackoverflow.com/questions/17449573/user-profile-pages-with-devise-routing-to-show-action
before_action :authenticate_user!
def show
    @user = User.all
#find(params[:id])

    
        
    end
  

end
