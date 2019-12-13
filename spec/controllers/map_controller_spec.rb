require 'rails_helper'
require 'spec_helper'

RSpec.describe MapController, type: :controller do
  describe "GET #index" do
# https://relishapp.com/rspec/rspec-rails/v/3-8/docs/routing-specs/route-to-matcher 
it "routes  /maps " do
    expect(:get => "/maps").to route_to(:controller => "map", :action => "index")
end


end
end
