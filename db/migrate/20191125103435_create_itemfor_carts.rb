class CreateItemforCarts < ActiveRecord::Migration[6.0]
  def change
    create_table :itemfor_carts do |t|
      t.references :chocolate_bar, null: false, foreign_key: true
      t.belongs_to :cart, null: false, foreign_key: true

      t.timestamps
    end
  end
end
