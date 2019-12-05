class AddQuantityToItemforCarts < ActiveRecord::Migration[6.0]
  def change
    add_column :itemfor_carts, :quantity, :integer, default: 1
  end
end
