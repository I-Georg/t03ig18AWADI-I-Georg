class AdminController < ApplicationController
include CurrentCart
def index
@orders = Order.all
@users = User.all
authenticate_admin!
end
def destroy
    @user = User.find(params[:id])
    @user.destroy

    if @user.destroy
        redirect_to admin_index_path, notice: "User  account deleted."
    end
  end
def authenticate_admin!
  authenticate_user!
  redirect_to '/', status: :forbidden unless current_user.admin?
end


end