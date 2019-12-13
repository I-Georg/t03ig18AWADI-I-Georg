
class LivefinddataController < ApplicationController
#https://cheatsheetseries.owasp.org/cheatsheets/Ruby_on_Rails_Cheatsheet.html
ActionDispatch::Response.default_headers = {          
   'X-Frame-Options' => 'SAMEORIGIN',     
   'X-Content-Type-Options' => 'nosniff',          
   'X-XSS-Protection' => '1;'
}
require 'unirest'
def index
#https://rapidapi.com/blog/how-to-use-an-api-with-ruby/
@code= CountryCode.all
if params[:input]
par = 'https://countries-cities.p.rapidapi.com/location/country/' + params[:input]

@response = response = Unirest.get par,
  headers:{
    "X-RapidAPI-Host" => "countries-cities.p.rapidapi.com",
    "X-RapidAPI-Key" => "cc8a2c4e30mshd441bd559fc47dap146ee5jsnf7e9fc26bf72"
  }

end
end
end
