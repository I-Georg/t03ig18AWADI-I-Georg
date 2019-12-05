class CombineProductsInShoppingCart < ActiveRecord::Migration[6.0]
  def change
  end
def up
# replace multiple items for a single product in a cart with a
# single item
ProductCart.all.each do |cart|
# count the number of each product in the cart
sums = cart.itemfor_cart.group(:chocolate_bar_id).sum(:quantity)
sums.each do |chocolate_bar_id, quantity|
if quantity > 1
# remove individual items
cart.itemfor_cart.where(chocolate_bar_id: chocolate_bar_id).delete_all
# replace with a single item
item = cart.itemfor_cart.build(chocolate_bar_id: chocolate_bar_id)
item.quantity = quantity
item.save!
end
end
end
end
def down
# split items with quantity>1 into multiple items
ItemforCarts.where("quantity>1").each do |item|
# add individual items
item.quantity.times do
ItemforCarts.create(
cart_id: itemfor_cart.cart_id,
chocolate_bar_id: itemfor_cart.chocolate_bar_id,
quantity: 1
)
end
# remove original item
itemfor_cart.destroy
end
end
end
