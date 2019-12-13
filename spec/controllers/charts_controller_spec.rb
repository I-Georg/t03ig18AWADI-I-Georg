require 'rails_helper'
require 'spec_helper'
RSpec.describe ChartsController, type: :controller do
  describe "GET #index" do
# https://relishapp.com/rspec/rspec-rails/v/3-8/docs/routing-specs/route-to-matcher 
it "routes  /graphcomparison " do
    expect(:get => "/graphcomparison").to route_to(:controller => "charts", :action => "display")
end


end
end
