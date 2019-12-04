class ApplicationController < ActionController::Base
include CartNow
#source rails5 book
before_action :build_cart, only: [:create]
before_action :set_itemfor_cart, only: [:show, :edit, :update, :destroy]

end
