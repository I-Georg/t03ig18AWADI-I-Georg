class ShopController < ApplicationController

  def index
  @chocolate_bars = ChocolateBar.all
 @bars = ChocolateBar.where('bar_name like ?', params[:s])
 #pagination,will_paginate gem source https://github.com/mislav/will_paginate
  @chocolate_bars = ChocolateBar.paginate(page: params[:page], per_page: 35) 
@c= ChocolateBar.select(:company_maker), params[:a]
@makerc = ChocolateBar.select(:company_maker)
@percents= ChocolateBar.select(:cocoa_percent), params[:b]
@percent = ChocolateBar.select(:cocoa_percent)


#https://www.sitepoint.com/advanced-search-ransack/

    # initialize_search
    #handle_search_name
    #handle_filters

  end  
#source https://medium.com/better-programming/making-a-search-and-filter-function-in-rails-a7858987f6f6
#https://gist.github.com/wukrit/4e80594491b695b0f8a0836de144d7fc
#def initialize_search
   # @bars = ChocolateBar.all
    #session[:search_name] ||= params[:search_name]
   # session[:filter] = params[:filter]
   # params[:filter_option] = nil if params[:filter_option] == ""
   # session[:filter_option] = params[:filter_option]
 # end
  
  #def handle_search_name
   # if session[:search_name]
     # @chocbar = ChocolateBar.where("name LIKE ?", "%#{session[:search_name]}%")
      #@bars = @bars.where(@chocbar.select(:comapny_maker))
    #else
     # @chocbar = ChocolateBar.all
   # end
  #end

  #def handle_filters
    #if session[:filter_option] && session[:filter] == "position"
      #@chocbars = @chocbars.where(position: session[:filter_option])
      #@bars = @bars.where(@bars.pluck(:company_maker))
    #elsif session[:filter_option] && session[:filter] == "team"
      #@bars = @bars.where(code: session[:filter_option])
    #end
  #end
def search
 @bars = ChocolateBar.where('bar_name like ?', params[:s])
@c= ChocolateBar.where('company_maker like ?', params[:a])
@makerc = ChocolateBar.select(:company_maker)
@percents= ChocolateBar.where('cocoa_percent like ?', params[:b])
@percent = ChocolateBar.select(:company_maker)

 
end
end


