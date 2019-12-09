require 'unirest'
class LivefinddataController < ApplicationController
def index
if params[:input]
par = 'https://countries-cities.p.rapidapi.com/location/country/' + params[:input]

@response = response = Unirest.get par,
  headers:{
    "X-RapidAPI-Host" => "countries-cities.p.rapidapi.com",
    "X-RapidAPI-Key" => "cc8a2c4e30mshd441bd559fc47dap146ee5jsnf7e9fc26bf72"
  }
@code = CountryCode.all
end
end
end
