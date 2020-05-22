# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

studio_1 = Studio.create(name: "Megaplex", location: "Utah")
studio_2 = Studio.create(name: "Gigaville", location: "Colorado")
movie_1 = Movie.create(title: "Goobers", creation_year: "1996", genre: "Horror", studio_id: studio_1.id)
movie_2 = Movie.create(title: "Slurps", creation_year: "2000", genre: "Rom-Com", studio_id: studio_2.id)
