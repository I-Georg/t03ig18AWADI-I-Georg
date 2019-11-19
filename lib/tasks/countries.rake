require 'csv'
namespace :countries do
  desc "seed countries"
  task seed_countries: :environment do
Country.destroy_all
CSV.foreach(Rails.root.join('.', 'lib', 'assets', 'countries.csv'), :headers =>true) do |row|
puts row.inspect
Country.create!(
 country_name: row[1],
lattitude: row[2].to_d,
longitude: row[3].to_d
      )
if Country.count > 224
break
end
  end
end
end


