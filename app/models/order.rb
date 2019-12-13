class Order < ApplicationRecord
#source Ruby, S. and Thomas, D., 2009. Agile web development with rails. Raleigh, NC: Pragmatic Bookshelf.- code taken and suited to follow needs as in all places where it is mentioned
has_many :line_items, dependent: :destroy


validates :name, :address, :email, presence: true
validates :pay_type, presence: true

 enum pay_type: {
  "Check" => 0,
  "Credit card" => 1,
  "Purchase order" => 2
}
    def add_line_items_from_shoppingcart(cart)
      cart.line_items.each do |item|
      item.cart_id = nil
      line_items << item
     end
   end
end
