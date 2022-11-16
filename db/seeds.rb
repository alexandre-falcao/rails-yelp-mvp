# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
gurume = {name: "gurume", address: "avenida das americas 7777", phone_number: "21999999999", category: "japanese"}
mamma_jamma =  {name: "Mamma Jamma", address: "Rua General Severiano", phone_number: "21888888888", category: "italian"}
cordon_blue =  {name: "Le Courdon Blue", address: "Rua da Passagem", phone_number: "21777777777", category: "french"}
china_in_box =  {name: "China In Box", address: "avenida das americas 10000", phone_number: "21666666666", category: "chinese"}
cugine =  {name: "Cugine", address: "Avenida Salvador Allende", phone_number: "21555555555", category: "italian"}

[gurume, mamma_jamma, cordon_blue, china_in_box, cugine].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "Finished!"
