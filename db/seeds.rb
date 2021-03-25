# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)U
User.create(first_name: ENV["FIRST_NAME"], last_name: ENV["LAST_NAME"], username: ENV["MY_USERNAME"], password: ENV["MY_PASSWORD"], admin: true)
