# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

1.times { Compagny.create!(name: "Samsung") }
1.times { User.create!(birthdate: Time.now, name: "John", lastname: "Doe", password: "123456789", email: "johnDoe@gmail.com", description: "") }
1.times { User.create!(birthdate: Time.now, name: "Recruteur", lastname: "Recruteur", password: "123456789", email: "recruteur@gmail.com", description: "", compagny_id: 1) }
1.times { City.create!(name: "Paris", compagny_id: 1) }
1.times { Quiz.create!(name: "Quiz 1", question: "[{name: Fumez vous?, type: bool}]", user_id: 2) }
1.times { Announce.create!(city_id: 1, compagny_id: 1, date: Time.now, quiz_id: 1) }
1.times { Response.create!(user_id: 1, announce_id: 1, answers: "[{name: 0, type: bool}]") }
