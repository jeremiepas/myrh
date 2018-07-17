# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

1.times { Compagny.create!(name: "Microsoft") }
10.times { User.create!(birthdate: Time.now, name: "John", lastname: "Doe", password: "123", email: "johnDoe@gmail.com", description: "Il a un gros zizi", compagny_id: false) }
