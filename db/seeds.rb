# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: 553, category: chinese }
pizza_west = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: 554, category: italian }
edamama = { name: "Edamama", address: "8 Chickenlane, London E4 8PQ",phone_number: category: japanese }
burger = { name: "Boom", address: "234 Coventgarden, London E1 8PZ", phone_number: 745, category: french }
steakhouse = { name: "TinTin", address: "2 Eastside, London E9 89PZ", phone_number: 998, category: belgian }
[dishoom, pizza_west, edamama, burger, steakhouse].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
  puts "Created #{restaurant.address}"
  puts "Created #{restaurant.phone_number}"
  puts "Created #{restaurant.category}"
end
puts "Finished!"
