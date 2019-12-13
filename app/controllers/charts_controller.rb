class ChartsController < ApplicationController
def display
@chocobar= ChocolateBar.all
@order = Order.all
#https://stackoverflow.com/questions/54359374/grouped-stacked-bar-column-chart-with-chartkick-on-ruby-on-rails
@datacontroller= [
  {
     name: "Bar_name",
     data: ChocolateBar.select(:bar_name).count
  },
  {
     name: "Company_maker",
     data: ChocolateBar.where(cocoa_percent: 30).count
  },
  
]
authenticate_admin!
end
#https://stackoverflow.com/questions/40794650/devise-add-admin-role
def authenticate_admin!
  authenticate_user!
  redirect_to '/', status: :forbidden unless current_user.admin?
end

end
