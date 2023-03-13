# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
seeduser = User.create!(email: "alanaucl@gmail.com", password: "123123")
Gear.create!(name: "Good sleeping", brand: "Reecho", category: "Sleeping Bag", price: 6.9 ,user: seeduser)
Gear.create!(name: "Good backpack", brand: "Taobao", category: "Backpack", price: 8.7 ,user: seeduser)
Gear.create!(name: "Amazing cup", brand: "Snowpeak", category: "Cup", price: 7.9 ,user: seeduser)
Gear.create!(name: "Big T-shirt", brand: "Snowpeak", category: "Clothes", price: 7.0 ,user: seeduser)

puts "finished"
