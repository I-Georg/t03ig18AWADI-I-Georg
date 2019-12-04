class ShopController < ApplicationController
  def index
  @chocolate_bars = ChocolateBar.order(:bar_name)
   @chocolate_bar_id = ChocolateBar.all
  end
end
