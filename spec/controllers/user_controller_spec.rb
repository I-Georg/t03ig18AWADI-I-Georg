require 'rails_helper'
require 'spec_helper'
#https://stackoverflow.com/questions/6032134/testing-the-user-model-with-rspec-devise-and-factory-girl
RSpec.describe UserController, type: :controller do
  describe "GET #index" do
describe User do
  before(:each) do
    @user = FactoryBot.build(:user)
user = FactoryBot.build(:user)
user.password = "123456"
user.save
post :login, {:email => user.email, :password => "123456"}
  
# https://relishapp.com/rspec/rspec-rails/v/3-8/docs/routing-specs/route-to-matcher 
it "routes  /profile " do
    expect(:get => "/profile").to route_to(:controller => "user", :action => "show")
end

end
end
end
end
