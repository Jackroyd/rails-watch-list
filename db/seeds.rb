# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


puts 'Deleting current Movies'
5.times do
  print('.')
  sleep(0.2)
end
Movie.destroy_all
puts 'Movies destroyed'

150.times do
  title = "#{Faker::Movies::HarryPotter.character} and the #{Faker::Verb.past_participle} #{Faker::TvShows::TheThickOfIt.position}"
  overview = Faker::TvShows::SouthPark.quote
  poster_url = Faker::Fillmurray.image
  rating = rand(0.0..10.0)
  Movie.create(title: title, overview: overview, poster_url: poster_url, rating: rating)
  puts("Movie '#{title}' created")
end

puts 'Completed'
