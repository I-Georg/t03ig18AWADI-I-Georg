require 'rails_helper'
require 'spec_helper'

RSpec.describe CartsController, type: :controller do
  describe "GET #index" do
# https://relishapp.com/rspec/rspec-rails/v/3-8/docs/routing-specs/route-to-matcher 
it "routes  /carts " do
    expect(:get => "/carts").to route_to(:controller => "carts", :action => "index")
end
describe "GET #edit" do
# https://relishapp.com/rspec/rspec-rails/v/3-8/docs/routing-specs/route-to-matcher 
it "routes  /carts " do
    expect(:get => "/carts/edit").to route_to(:controller => "carts","action"=>"show", "id"=>"edit")
end
end
describe "GET #update" do
# https://relishapp.com/rspec/rspec-rails/v/3-8/docs/routing-specs/route-to-matcher 
it "routes  /carts " do
    expect(:get => "/carts/update").to route_to("controller"=>"carts", "action"=>"show", "id"=>"update")
end
end
describe "GET #destroy" do
# https://relishapp.com/rspec/rspec-rails/v/3-8/docs/routing-specs/route-to-matcher 
it "routes  /carts " do
    expect(:get => "/carts/destroy").to route_to("controller"=>"carts", "action"=>"show", "id"=>"destroy")
end
end
end
end
