# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Generando departamentos...'
Flat.destroy_all

9.times do
  Flat.create!(
    name: Faker::Commerce.department,
    address: Faker::Address.street_address,
    description: Faker::Lorem.paragraph,
    price_per_night: Faker::Commerce.price(range: 50.0..400.0),
    number_of_guests: Faker::Number.within(range: 1..10)
  )
end

puts 'Departamentos creados!!'
