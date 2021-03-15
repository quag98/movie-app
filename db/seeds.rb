# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

actor = Actor.new({ first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock" })
actor.save

movie = Movie.new({ title: "Inception", year: 2010, plot: "Dom Cobb (Leonardo DiCaprio) is a thief with the rare ability to enter people's dreams and steal their secrets from their subconscious." })
movie.save

movie = Movie.new({ title: "Old School", year: 2003, plot: "He moves into a new place, which happens to be near a college campus, and tries to get his life back together." })
movie.save

Genre.create(name: "Thriller")

Genre.create(name: "Action")

Genre.create(name: "Comedy")
