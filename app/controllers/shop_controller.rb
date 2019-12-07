class ShopController < ApplicationController

  def index
  @chocolate_bars = ChocolateBar.order(:bar_name)
 #pagination,will_paginate gem source https://github.com/mislav/will_paginate
  @chocolate_bars = ChocolateBar.paginate(page: params[:page], per_page: 35) 
  end
end
