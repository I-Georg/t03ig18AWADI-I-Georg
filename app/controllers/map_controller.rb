class MapController < ApplicationController
#include CurrentCart
 # before_action :set_cart, only: [:create] 
def index
@chocolatebar = ChocolateBar.all


end
end
