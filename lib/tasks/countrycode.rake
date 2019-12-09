namespace :countrycode do

  desc "seed code"
  task seed_countries: :environment do
CountryCode.destroy_all
CSV.foreach(Rails.root.join('.', 'lib', 'assets', 'countries.csv'), :headers =>true) do |row|
puts row.inspect

CountryCode.create!(
 countrycode: row[0]

      )
if CountryCode.count > 241
break
end
 
end
end
end
