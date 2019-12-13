require 'rails_helper'
require 'spec_helper'

RSpec.describe LineItemsController, type: :controller do
  describe "GET #index" do
# https://relishapp.com/rspec/rspec-rails/v/3-8/docs/routing-specs/route-to-matcher 
it "routes  /line_items " do
    expect(:get => "/line_items").to route_to(:controller => "line_items", :action => "index")
end
end
describe "GET #edit" do
# https://relishapp.com/rspec/rspec-rails/v/3-8/docs/routing-specs/route-to-matcher 
it "routes  /line_items/edit " do
    expect(:get => "/line_items/edit").to route_to(:controller => "line_items","action"=>"show", "id"=>"edit")
end
end
describe "GET #update" do
# https://relishapp.com/rspec/rspec-rails/v/3-8/docs/routing-specs/route-to-matcher 
it "routes  /line_items " do
    expect(:get => "/line_items/update").to route_to("controller"=>"line_items", "action"=>"show", "id"=>"update")
end
end
describe "GET #destroy" do
# https://relishapp.com/rspec/rspec-rails/v/3-8/docs/routing-specs/route-to-matcher 
it "routes  /line_items " do
    expect(:get => "/line_items/destroy").to route_to("controller"=>"line_items", "action"=>"show", "id"=>"destroy")
end
end

end
