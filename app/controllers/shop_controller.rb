class ShopController < ApplicationController
  def index
  @chocolate_bars = ChocolateBar.order(:bar_name)
  end
end
