class LineItem < ApplicationRecord
#source Rails5 book
  belongs_to :order, optional: true
  belongs_to :chocolate_bar, optional: true
  belongs_to :cart
  

def total_price
chocolate_bar.price * quantity
end 

end
