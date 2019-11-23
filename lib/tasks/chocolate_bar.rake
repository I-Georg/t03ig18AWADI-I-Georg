require 'csv'
namespace :chocolate_bar do
  desc "seed chocolate_bar table"
  task seed_bars: :environment do
ChocolateBar.destroy_all


#@bea.each do |x|
#puts x
#end

CSV.foreach(Rails.root.join('.', 'lib', 'assets', 'flavorsofcacao.csv'), :headers =>true) do |row|
#puts row.inspect
ChocolateBar.create!(
bar_name: Faker::Name.unique.first_name, 
price: Faker::Number.decimal(l_digits: 2),
company_maker: row[0].to_s,
review_date: row[3].to_i,
cocoa_percent: row[4].to_i

)

end

#idarray = []
#      350.times do | index |
#index = Country.where(:country_name => "Venezuela").pluck(:id)
#end
 #     450.times do |x|
#      300.times do |y|
#100.times do |z|
#50.times do |a|
#50.times do |b|
#196.times do |c|
#50.times do |aa|
#50.times do |bb|
#100.times do |aba|
#idarray << index = Country.where(:country_name => "Venezuela").pluck(:id)
#x = Country.where(:country_name => "Madagascar").pluck(:id)
#y = Country.where(:country_name => "Colombia").pluck(:id)
#z= Country.where(:country_name => "Ecuador").pluck(:id)
#a = Country.where(:country_name => "Brazil").pluck(:id)
#c = Country.where(:country_name => "Togo").pluck(:id)
#aa =Country.where(:country_name => "Cuba").pluck(:id)
# bb =Country.where(:country_name => "Dominican Republic").pluck(:id)
#aba = Country.where(:country_name => "Bolivia").pluck(:id)
#bean = Country.all
#8.times do |x|
#bean.each do |bea|
#bea = Country.all.pluck(:id)

#end
#end

#end
#end
#end
#end
#end
#end
#end
#end
#end

  end

end
 
