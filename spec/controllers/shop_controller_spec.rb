require 'rails_helper'
require 'spec_helper'
RSpec.describe ShopController, type: :controller do
  describe "GET #index" do
#source  https://relishapp.com/rspec/rspec-rails/v/3-8/docs/routing-specs/route-to-matcher
it "routes  / " do
    expect(:get => "/").to route_to(:controller => "shop", :action => "index")
end
it "routes  /search " do
    expect(:get => "/").to route_to(:controller => "shop", :action => "index")
end

end
end

