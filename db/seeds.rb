# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user = User.create(email: 'batatinha@batata.com', password: 'batata')
user_1 = User.create(email: 'abobrinha@batata.com', password: 'batata')
user_2 = User.create(email: 'bananinha@batata.com', password: 'batata')

feeling = Feeling.create(name: 'Calm', percentage: 100, user_id: user.id)
feeling_1 = Feeling.create(name: 'Angry', percentage: 100, user_id: user_1.id)
feeling_2 = Feeling.create(name: 'Peace', percentage: 100, user_id: user_2.id)
