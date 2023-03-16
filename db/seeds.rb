# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"
User.destroy_all
Gear.destroy_all
seeduser = User.create!(email: "alanaucl@gmail.com", password: "123123")
seeduser2 = User.create!(email: "mandy@gmail.com", password: "123123")
file = URI.open("https://www.rei.com/media/2f9c8c47-299b-4a4c-aa05-b10fbf303691.jpg")
gear = Gear.new(name: "Wawona 6 tent", brand: "The North Face", category: "Tent", price: 8.5, user: seeduser)
gear.photo.attach(io: file, filename: "Wawona_6.png", content_type: "image/png")
gear.save
file = URI.open("https://www.rei.com/media/e5000812-b113-4fdc-8d66-39d6f59b0669.jpg")
gear = Gear.new(name: "Copper Spur HV UL2 Tent", brand: "Big Agnes", category: "Tent", price: 12, user: seeduser)
gear.photo.attach(io: file, filename: "hvul2.png", content_type: "image/png")
gear.save
file = URI.open("https://www.rei.com/media/17d0f0fe-15d4-47bc-9113-aaf24eee0509.jpg")
gear = Gear.new(name: "Half Dome SL 2+ Tent with Footprint", brand: "REI Co-op", category: "Tent", price: 6, user: seeduser)
gear.photo.attach(io: file, filename: "DomeSL.png", content_type: "image/png")
gear.save
file = URI.open("https://www.rei.com/media/2f9c8c47-299b-4a4c-aa05-b10fbf303691.jpg")
gear = Gear.new(name: "Wawona 6 tent", brand: "The North Face", category: "Tent", price: 8.5, user: seeduser)
gear.photo.attach(io: file, filename: "Wawona_6.png", content_type: "image/png")
gear.save
file = URI.open("https://www.rei.com/media/e5000812-b113-4fdc-8d66-39d6f59b0669.jpg")
gear = Gear.new(name: "Copper Spur HV UL2 Tent", brand: "Big Agnes", category: "Tent", price: 12, user: seeduser)
gear.photo.attach(io: file, filename: "hvul2.png", content_type: "image/png")
gear.save
file = URI.open("https://www.rei.com/media/17d0f0fe-15d4-47bc-9113-aaf24eee0509.jpg")
gear = Gear.new(name: "Half Dome SL 2+ Tent with Footprint", brand: "REI Co-op", category: "Tent", price: 6, user: seeduser)
gear.photo.attach(io: file, filename: "DomeSL.png", content_type: "image/png")
gear.save
file = URI.open("https://www.rei.com/media/17d0f0fe-15d4-47bc-9113-aaf24eee0509.jpg")
gear = Gear.new(name: "Half Dome SL 2+ Tent with Footprint", brand: "REI Co-op", category: "Tent", price: 6, user: seeduser)
gear.photo.attach(io: file, filename: "DomeSL.png", content_type: "image/png")
gear.save
file = URI.open("https://www.thesportinglodge.co.uk/wp-content/uploads/2021/03/Snow-Peak-Taut-Line-Hitch-T-Shirt-White-18982-1.jpg")
gear = Gear.new(name: "Snowpeak T-shirt", brand: "Snowpeak", category: "Clothes", price: 2, user: seeduser2)
gear.photo.attach(io: file, filename: "SPTshirt.png", content_type: "image/png")
gear.save
# seeduser = User.create!(email: "alanaucl@gmail.com", password: "123123")
# Gear.create!(name: "Good sleeping", brand: "Reecho", category: "Sleeping Bag", price: 6.9 ,user: seeduser)
# Gear.create!(name: "Good backpack", brand: "Taobao", category: "Backpack", price: 8.7 ,user: seeduser)
# Gear.create!(name: "Amazing cup", brand: "Snowpeak", category: "Cup", price: 7.9 ,user: seeduser)
# Gear.create!(name: "Big T-shirt", brand: "Snowpeak", category: "Clothes", price: 7.0 ,user: seeduser)

puts "finished"
