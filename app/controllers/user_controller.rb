class UserController < ApplicationController
#https://stackoverflow.com/questions/17449573/user-profile-pages-with-devise-routing-to-show-action
before_filter :authenticate_user!
def show
    @user = User.find(params[:id])

    respond_to do |format|
        format.html { redirect_to @user, notice: 'User login successful' }
        format.xml { render :xml => @user }
        format.json { render :show, status: :ok, location: @user}

        
    end
  end

end
