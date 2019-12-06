class Cart < ApplicationRecord
has_many :line_items, dependent: :destroy



#source Rails5 book
def add_chocolate_bar(chocolate_bar)
current_item = line_items.find_by(chocolate_bar_id: chocolate_bar.id)
if current_item
current_item.quantity += 1
else
current_item = line_items.build(chocolate_bar_id: chocolate_bar.id)
end
current_item
end

def total_price
line_items.to_a.sum { |item| item.total_price }
end
end
