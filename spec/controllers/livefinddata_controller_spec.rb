require 'rails_helper'
require 'spec_helper'
RSpec.describe LivefinddataController, type: :controller do
  describe "GET #index" do
# https://relishapp.com/rspec/rspec-rails/v/3-8/docs/routing-specs/route-to-matcher 
it "routes  /livedata " do
    expect(:get => "/livedata").to route_to(:controller => "livefinddata", :action => "index")
end


end
end
