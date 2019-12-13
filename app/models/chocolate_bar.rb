class ChocolateBar < ApplicationRecord
belongs_to :country, optional: true
has_many :line_items
before_destroy :ensure_not_referenced_by_any_line_item

validates :bar_name, :price, :cocoa_percent, :company_maker, :country_name, presence: true
private

    def ensure_not_referenced_by_any_line_item
     unless line_items.empty?
       errors.add(:base, 'Line Items present')
       throw :abort
     end
   end
end
