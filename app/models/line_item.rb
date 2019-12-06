class LineItem < ApplicationRecord
  belongs_to :chocolate_bar
  belongs_to :cart
end
