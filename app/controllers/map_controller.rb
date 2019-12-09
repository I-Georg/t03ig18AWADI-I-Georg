class MapController < ApplicationController
def index
@coordinate = ChocolateBar.all
#https://zaiste.net/rails_pluck_to_hash/
#@marker = ChocolateBar.all.pluck(:latitude, :longitude).map { |latitude, longitude| { latitude: latitude, longitude: longitude } }
#@chocolate_bar = ChocolateBar.select(:latitude)


#<%@marker.each do |lat, long|%>
#<%=@lat=lat.to_a[0].to_i%>
#<%=@long=long%>
#<%end%>
end
end
