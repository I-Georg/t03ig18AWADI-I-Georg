class ProductCart < ApplicationRecord
    has_many :itemfor_cart, dependent: :destroy
end
