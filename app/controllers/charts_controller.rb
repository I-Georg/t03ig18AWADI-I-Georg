class ChartsController < ApplicationController
def display
@chocobar= ChocolateBar.all
end
end
