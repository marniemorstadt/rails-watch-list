# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

puts "Cleaning database..."
Movie.destroy_all

10.times do
  movie = Movie.create!({
  title: Faker::Movie.title,
  overview: Faker::Lorem.sentences,
  poster_url:'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.state.gov%2Foceans%2F&psig=AOvVaw3jviGLEFO_ZI5Fuzg8G2r6&ust=1677247198404000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCIiE1Ovmq_0CFQAAAAAdAAAAABAE',
  rating:rand(0..10)
  })
  puts "created #{movie.title}"
end
