# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
locations = [{city: "Austin", state: "TX"}, {city: "Dallas", state: "TX"}, {city: "Houston", state: "TX"}]

locations.each do |location|
  loc = Location.find_or_create_by(city: location[:city], state: location[:state])
  Facility.find_or_create_by(name: "APA-#{location[:city]}", location_id: loc.id)
end

categories = ["Cat", "Dog"]

categories.each do |category|
  Category.find_or_create_by(species: category)
end

cats = ["Mr. Whiskers", "Ragdoll", "Mittens", "Tiger", "Eddie", "Mama", "Princess", "Bella", "Sunshine", "Fozz", "Izzy", "Fitz", "Walker", "Carl", "Lucy", "Lou", "Sasha", "Peach"]
breeds = ["Tabby", "Domestic Shorthair", "Siamese", "Maine Coon"]

cats.each do |cat|
  Animal.find_or_create_by(name: cat, breed: breeds.sample, sex: ["male", "female"].sample, fee: 15000, weight: 16, color: ["black", "orange", "calico"].sample, adopted: false, category_id: Category.find_by(species: "Cat").id, facility_id: Facility.all.pluck(:id).sample, age: rand(1..15) )
end
