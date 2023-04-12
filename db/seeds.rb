# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



10.times do
  Property.create!(
    name: Faker::Lorem.word,
    title: Faker::Lorem.sentence,
    description: Faker::Lorem.paragraph,
    address1: Faker::Address.street_address,
    city: Faker::Address.city,
    state: Faker::Address.state,
    country: "VIET NAM"
  )
end
