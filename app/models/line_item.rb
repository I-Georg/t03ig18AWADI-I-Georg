class LineItem < ApplicationRecord
  belongs_to :chocolate_bar
  belongs_to :cart

def total_price
chocolate_bar.price * quantity
end 

end
