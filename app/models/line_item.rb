class LineItem < ApplicationRecord
#source Rails5 book
  belongs_to :order, optional: true
  belongs_to :chocolate_bar, optional: true
  belongs_to :cart
  
#Ruby, S. and Thomas, D., 2009. Agile web development with rails. Raleigh, NC: Pragmatic Bookshelf.
def total_price
chocolate_bar.price * quantity
end 

end
