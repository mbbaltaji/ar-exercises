require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

Surrey = Store.create(
  name: 'Surrey', 
  annual_revenue: 224000, 
  mens_apparel: false, 
  womens_apparel: true
)

Whislet = Store.create(
  name: 'Whistler',
  annual_revenue: 19000000,
  mens_apparel: true,
  womens_apparel: false
)

Yaletown = Store.create(
  name: 'Yaletown',
  annual_revenue: 4300000,
  mens_apparel: true,
  womens_apparel: true
)

@mens_stores = Store.where(mens_apparel: true)

@mens_stores.each do |store|
  puts "name: #{store.name}, Annual Revienue: #{store.annual_revenue}"
end

@womens_stores = Store.where("womens_apparel= true and annual_revenue < 1000000")

@womens_stores.each do |store|
  puts "name: #{store.name}, Annual Revienue: #{store.annual_revenue}"
end