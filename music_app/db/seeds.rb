# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
joe = User.new(email: 'joe@joe.com')
joe.password = "123456"
joe.save!


Band.destroy_all
Band.create!(name: "The Beatles")
Band.create!(name: "Nirvana")
Band.create!(name: "Tame Impala")
