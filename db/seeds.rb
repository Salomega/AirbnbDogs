# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
10.times do
  city = City.create(city_name: Faker::WorldCup.city)
end

10.times do
  dog = Dog.create(dog_name:Faker::Dog.name, city_id: rand(1..City.last.id))
end

10.times do
  dogsitter = Dogsitter.create(sitter_name:Faker::Name.first_name, city_id: rand(1..City.last.id))
end

10.times do |index|
  stroll = Stroll.create(stroll_id: rand(1..100), city_id: rand(1..City.last.id))
end