require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
include Devise::Test::ControllerHelpers
  # test "the truth" do
  #   assert true
  # end
def setup
    sign_in FactoryBot.create(:user)
  end
end
