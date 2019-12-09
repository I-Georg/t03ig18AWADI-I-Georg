class CreateCountryCodes < ActiveRecord::Migration[6.0]
  def change
    create_table :country_codes do |t|
      t.string :countrycode

      t.timestamps
    end
  end
end
