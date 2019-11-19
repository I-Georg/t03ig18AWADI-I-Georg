class CreateCountries < ActiveRecord::Migration[6.0]
  def change
    create_table :countries do |t|
      t.text :country_name
      t.decimal :lattitude
      t.decimal :longitude

      t.timestamps
    end
  end
end
