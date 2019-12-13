require 'test_helper'

class ChocolateBarTest < ActiveSupport::TestCase
#Sourcr Rails5 book - Agile web development
fixtures :chocolate_bar
   test "chocolate bars should not be empty" do
 @chocolate_bar = ChocolateBar.new
assert product.invalid?
assert product.errors[:bar_name].any?
assert product.errors[:price].any?
assert product.errors[:company_maker].any?
assert product.errors[:cocoa_percent].any?
     
   end
end
