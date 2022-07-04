require_relative '../setup'

puts "Exercise 1"
puts "----------"

Burnaby = Store.create(
  name: 'Burnaby', 
  annual_revenue: 300000, 
  mens_apparel: true, 
  womens_apparel: true
)

Richmond = Store.create(
  name: 'Richmond',
  annual_revenue: 1260000,
  mens_apparel: false,
  womens_apparel: true
)

Gastown = Store.create(
  name: 'Gastown',
  annual_revenue: 190000,
  mens_apparel: true,
  womens_apparel: false
)

print 'Store count: ', Store.count;
puts
