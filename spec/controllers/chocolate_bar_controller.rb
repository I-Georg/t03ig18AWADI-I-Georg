require 'rails_helper'
require 'spec_helper'

RSpec.describe ChocolateBarsController, type: :controller do
  describe "GET #index" do
# https://relishapp.com/rspec/rspec-rails/v/3-8/docs/routing-specs/route-to-matcher 
it "routes  /chocolate_bars " do
    expect(:get => "/chocolate_bars").to route_to(:controller => "chocolate_bars", :action => "index")
end
end
describe "GET #edit" do
# https://relishapp.com/rspec/rspec-rails/v/3-8/docs/routing-specs/route-to-matcher 
it "routes  /chocolate_bars/edit " do
    expect(:get => "/chocolate_bars/edit").to route_to(:controller => "chocolate_bars","action"=>"show", "id"=>"edit")
end
end
describe "GET #update" do
# https://relishapp.com/rspec/rspec-rails/v/3-8/docs/routing-specs/route-to-matcher 
it "routes  /chocolate_bars " do
    expect(:get => "/chocolate_bars/update").to route_to("controller"=>"chocolate_bars", "action"=>"show", "id"=>"update")
end
end
describe "GET #destroy" do
# https://relishapp.com/rspec/rspec-rails/v/3-8/docs/routing-specs/route-to-matcher 
it "routes  /carts " do
    expect(:get => "/chocolate_bars/destroy").to route_to("controller"=>"chocolate_bars", "action"=>"show", "id"=>"destroy")
end
end

end
