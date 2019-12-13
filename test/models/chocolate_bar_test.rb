require 'test_helper'

class ChocolateBarTest < ActiveSupport::TestCase
#Sourcr Rails5 book - Agile web development
 setup do
   @chocolate_bar = chocolate_bars(:one)

  end

   test "chocolate bars should not be empty" do
 @chocolate_bar = ChocolateBar.new
assert @chocolate_bar.invalid?
assert @chocolate_bar.errors[:bar_name].any?
assert @chocolate_bar.errors[:price].any?
assert @chocolate_bar.errors[:company_maker].any?
assert @chocolate_bar.errors[:cocoa_percent].any?
     
   end
end
