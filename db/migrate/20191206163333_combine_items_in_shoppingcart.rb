class CombineItemsInShoppingcart < ActiveRecord::Migration[6.0]
  def change
  end

def up

Cart.all.each do |cart|

sums = cart.line_items.group(:chocolate_bar_id).sum(:quantity)
sums.each do |chocolate_bar_id, quantity|
if quantity > 1

cart.line_items.where(chocolate_bar_id: chocolate_bar_id_id).delete_all

item = cart.line_items.build(chocolate_bar_id: chocolate_bar_id)
item.quantity = quantity
item.save!
end
end
end
end

def down

LineItem.where("quantity>1").each do |line_item|

line_item.quantity.times do
LineItem.create(
cart_id: line_item.cart_id,
chocolate_bar_id: line_item.chocolate_bar_id,
quantity: 1
)
end

line_item.destroy
end
end
end
