ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...

  include FactoryBot::Syntax::Methods
  include Devise::Test::IntegrationHelpers
  include Warden::Test::Helpers
#https://medium.com/@yutafujii_59175/a-simple-login-test-with-rails-devise-and-unit-test-68bc4fade4ba
def log_in(user)
if integration_test?
login_as(user, :scope => :user)
else
sign_in(user)
end
end

end
