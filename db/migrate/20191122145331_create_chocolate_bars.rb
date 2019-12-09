class CreateChocolateBars < ActiveRecord::Migration[6.0]
  def change
    create_table :chocolate_bars do |t|
      t.text :bar_name
      t.decimal :price
      t.text :company_maker
      t.integer :review_date
      t.integer :cocoa_percent
      t.text  :country_name
      t.decimal :latitude
      t.decimal  :longitude  
      t.belongs_to :country, null: true, foreign_key: true

      t.timestamps
    end
  end
end
