class ProductCart < ApplicationRecord
    has_many :itemfor_cart, dependent: :destroy
#rails5 book
def add_chocolate_bar(chocolate_bar)
current_item = itemfor_cart.find_by(chocolate_bar_id: chocolate_bar.id)
if current_item
current_item.quantity += 1
else
current_item = itemfor_cart.build(chocolate_bar_id: chocolate_bar.id)
end
current_item
end
end
