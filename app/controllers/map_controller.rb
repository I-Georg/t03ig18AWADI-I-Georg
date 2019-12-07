class MapController < ApplicationController
def index
@chocolate_bar =ChocolateBar.all
@displaylat = ChocolateBar.find(@chocolate_bar.ids)


end
end
