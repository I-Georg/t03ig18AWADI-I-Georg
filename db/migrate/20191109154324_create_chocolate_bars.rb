class CreateChocolateBars < ActiveRecord::Migration[6.0]
  def change
    create_table :chocolate_bars do |t|
      t.text :bar_name
      t.decimal :price
      t.decimal :quantity
      t.integer :company_maker
      t.datetime :review_date
      t.integer :cocoa_percent
      
      

      t.references :bean_origin, index: true, foreign_key: {to_table: :countries}

      t.timestamps
    end
  end
end
