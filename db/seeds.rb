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
gear = Gear.new(name: "Wawona 6 tent", brand: "The North Face", category: "Tent", price: 8.5, description: "In addition to new double-wall construction, this updated version also features re-engineered poles and simplified setup
  Made without flame-retardant coatings
  Hybrid double-wall construction and a large mesh front door offer superior ventilation
  Massive interior height lets you stand comfortably or sit in chairs inside the tent and vestibule", user: seeduser)
gear.photo.attach(io: file, filename: "Wawona_6.png", content_type: "image/png")
gear.save
file = URI.open("https://www.rei.com/media/e5000812-b113-4fdc-8d66-39d6f59b0669.jpg")
gear = Gear.new(name: "Copper Spur HV UL2 Tent", brand: "Big Agnes", category: "Tent", price: 12, description: "Awning-style vestibules expand covered living space, which is great for both drizzle and sun protection
  3D bin 'mezzanine' in the foot provides massive, off-the-floor storage; oversized ceiling pocket in the head; media pockets provide earbud cord-routing
  Tent corner construction with TipLok Tent Buckle™ design streamlines and combines 3 functions: secure pole-tip capture, rainfly attachment and tensioner, and stake-out loop", user: seeduser)
gear.photo.attach(io: file, filename: "hvul2.png", content_type: "image/png")
gear.save
file = URI.open("https://www.rei.com/media/17d0f0fe-15d4-47bc-9113-aaf24eee0509.jpg")
gear = Gear.new(name: "Half Dome SL 2+ Tent with Footprint", brand: "REI Co-op", category: "Tent", price: 6, description: "Superlight (SL) construction engineered for an impressive trail weight (3 lbs. 15 oz.) that stands up to 3-season weather and doesn't skimp on the beloved Half Dome features
2+ size floor plan boosts livable space for 2 people, plus gear—or a furry friend
Pre-bent pole architecture boosts livable space; vertical side walls provide generous head and shoulder room
Mesh panels in upper portion of tent improve ventilation and views; ripstop panels in lower portion provide privacy, reduce drafts and exposure to blowing dust and dirt", user: seeduser)
gear.photo.attach(io: file, filename: "DomeSL.png", content_type: "image/png")
gear.save
file = URI.open("https://www.rei.com/media/e2c11622-93aa-4a29-8b58-149f841d5df0.jpg")
gear = Gear.new(name: "REI Co-op Trailbreak 60 Pack - Women's", brand: "REI Co-op", category: "Backpack", price: 3.5, description: "Roomy top-loading main compartment cinches shut; tension adjuster straps pull the top lid down to keep your load tight and balanced
  Padded back, shoulder straps and hipbelt provide for comfortable carry
  Adjustable torso makes it easy for people of different sizes to share the pack, or for you to pass it down
  Sleeping bag compartment has its own zipper so you can pop your bag out fast to set up camp or take a nap in a mountain meadow en route to your basecamp", user: seeduser)
gear.photo.attach(io: file, filename: "Trailbreak_60.png", content_type: "image/png")
gear.save
file = URI.open("https://www.rei.com/media/36975c1b-6358-4c47-882d-483f44cbf183.jpg")
gear = Gear.new(name: "Osprey Archeon 45 Pack - Women's", brand: "Osprey", category: "Backpack", price: 5, description: "Global Recycle Standard (GRS) certified recycled materials are treated with a C0 PFC-free durable water repellent (DWR) finish
Adjustable harness provides a custom fit for all-day comfort
Mesh-covered, bumped foam ventilates while keeping the load close to your body
HDPE framesheet and 2 profiled aluminum alloy stays spread the load across the entire back panel
Full front panel access makes it easy to pack and get to your gear
Internal sleeve can fit a hydration reservoir up to 3 liters in size (reservoir not included)", user: seeduser)
gear.photo.attach(io: file, filename: "Archeon45.png", content_type: "image/png")
gear.save
file = URI.open("https://www.rei.com/media/a5ad5568-5850-484e-b084-9982fc3014f3.jpg")
gear = Gear.new(name: "Lowa Renegade GTX Mid Hiking Boots - Women's", brand: "Lowa", category: "Clothes", price: 3, description: "Waterproof, breathable GORE-TEX linings help protect your feet from the elements
  Accommodating Derby-cut styling fits a wide variety of foot volumes
  Made on a women-specific last
  Sleek yet rugged nubuck leather uppers offer durability
  Padded and gusseted tongues relieve lace pressure while keeping out trail debris", user: seeduser)
gear.photo.attach(io: file, filename: "Renegade.png", content_type: "image/png")
gear.save
file = URI.open("https://www.rei.com/media/f61192d0-da80-4e2f-896f-3fadabc729e9.jpg?")
gear = Gear.new(name: "REI Co-op Flash Hiking Boots - Women's", brand: "REI Co-op", category: "Clothes", price: 2.5, user: seeduser)
gear.photo.attach(io: file, filename: "FlashBoots.png", content_type: "image/png")
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
