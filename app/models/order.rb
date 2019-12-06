class Order < ApplicationRecord
#source Rails5 book- code taken and suited to follow needs
validates :name, :address, :email, presence: true
validates :pay_type, presence: true

enum pay_type: {
  "Check" => 0,
  "Credit card" => 1,
  "Purchase order" => 2
}
end
