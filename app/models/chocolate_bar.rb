class ChocolateBar < ApplicationRecord
#source Rails5 book
belongs_to :country, optional: true
has_many :itemfor_cart

before_destroy :ensure_not_referenced_by_any_itemfor_cart

private
#ensure that there are no litemsforcart referencing the chocolate bar product -source Rails5 book
    def ensure_not_referenced_by_any_itemfor_cart
        unless itemfor_carts.empty?
        errors.add(:base, 'There are items for the cart')
        throw :abort
      end
     end
   end

