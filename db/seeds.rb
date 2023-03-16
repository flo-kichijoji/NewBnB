require "open-uri"

puts "Cleaning database..."
Booking.destroy_all
Review.destroy_all
Flat.destroy_all
User.destroy_all

puts "Creating user..."
user1 = User.create!({ id: 1, email: "potato@gmail.com", password: "123456", first_name: "Mr. Russet", last_name: "Potato" })
user2 = User.create!({ id: 2, email: "tomato@gmail.com", password: "123456", first_name: "Mr. Tomato", last_name: "Sarada" })
puts "Creating flat..."

# Philipp's seeds:
puts "Creating flat..."
file = URI.open("https://images.unsplash.com/photo-1513517860393-d9bf0651bed8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHRyZWVob3VzZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60%22")
flat1 = Flat.create!({ name: "Treehouse in the forest", address: "Chamigny, Île-de-France, France", description: "Nice treehouse", price: 120, capacity: 4, user: User.first, availability: true })
flat1.photo.attach(io: file, filename: "treehouse.png", content_type: "image/png")
flat1.save
puts "Creating flat..."
file2 = URI.open("https://images.unsplash.com/photo-1556503868-012fa6d205b5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80")
flat2 = Flat.create!({ name: "Cave in the mountains", address: "Stuttgart, Baden-Württemberg, Germany", description: "Nice cave", price: 80, capacity: 8, user: User.first, availability: true })
flat2.photo.attach(io: file2, filename: "cave.png", content_type: "image/png")
flat2.save
puts "Creating flat..."
file3 = URI.open("https://images.unsplash.com/photo-1624923686627-514dd5e57bae?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80")
flat3 = Flat.create!({ name: "Tent in the woods", address: "Perugia, Umbria, Italy", description: "Nice tent", price: 50, capacity: 2, user: User.first, availability: true })
flat3.photo.attach(io: file3, filename: "tent.png", content_type: "image/png")
flat3.save
puts "Creating flat..."
file4 = URI.open("https://images.unsplash.com/photo-1632692608995-bee322df2a3b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80")
flat4 = Flat.create!({ name: "Underwater submarine", address: "Coron, MIMAROPA, Philippines", description: "Nice submarine", price: 370, capacity: 4, user: User.second, availability: true })
flat4.photo.attach(io: file4, filename: "submarine.png", content_type: "image/png")
flat4.save
puts "Creating flat..."
file5 = URI.open("https://images.unsplash.com/photo-1594872653896-21c0b452d605?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80")
flat5 = Flat.create!({ name: "Modern Loft in Downtown", address: "New York, NY, USA", description: "Beautiful loft with a city view", price: 250, capacity: 2, user: User.second, availability: true })
flat5.photo.attach(io: file5, filename: "modern_loft.png", content_type: "image/png")
flat5.save
puts "Creating flat..."
file6 = URI.open("https://images.unsplash.com/photo-1631645033513-15144f920557?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80")
flat6 = Flat.create!({ name: "Seaside Villa", address: "Cancun, Mexico", description: "Luxurious villa with ocean view", price: 500, capacity: 6, user: User.first, availability: true })
flat6.photo.attach(io: file6, filename: "seaside_villa.png", content_type: "image/png")
flat6.save
puts "Creating flat..."
file7 = URI.open("https://images.unsplash.com/photo-1482192505345-5655af888cc4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1856&q=80")
flat7 = Flat.create!({ name: "Mountain Cabin", address: "Banff, Alberta, Canada", description: "Cozy cabin in the Rocky Mountains", price: 180, capacity: 4, user: User.first, availability: true })
flat7.photo.attach(io: file7, filename: "mountain_cabin.png", content_type: "image/png")
flat7.save
puts "Creating flat..."
file8 = URI.open("https://images.unsplash.com/photo-1561799461-445437ea576b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80")
flat8 = Flat.create!({ name: "Beachfront Apartment", address: "Miami, FL, USA", description: "Stunning apartment with ocean view", price: 300, capacity: 4, user: User.first, availability: true })
flat8.photo.attach(io: file8, filename: "beachfront.png", content_type: "image/png")
flat8.save
puts "Creating flat..."
file9 = URI.open("https://images.unsplash.com/photo-1498176126716-a01bc267f662?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1924&q=80")
flat9 = Flat.create!({ name: "Charming Cottage", address: "Cotswolds, England", description: "Quaint cottage in the English countryside", price: 150, capacity: 2, user: User.second, availability: true })
flat9.photo.attach(io: file9, filename: "charming_cottage.png", content_type: "image/png")
flat9.save
puts "Creating flat..."
file10 = URI.open("https://images.unsplash.com/photo-1543372165-23cb16764356?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80")
flat10 = Flat.create!({ name: "Rustic Farmhouse", address: "Tuscany, Italy", description: "Traditional farmhouse with a rustic feel", price: 200, capacity: 6, user: User.second, availability: true })
flat10.photo.attach(io: file10, filename: "farmhouse.png", content_type: "image/png")
flat10.save
puts "Creating flat..."
file11 = URI.open("https://images.unsplash.com/photo-1560448204-e02f11c3d0e2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80")
flat11 = Flat.create!({ name: "Luxury Penthouse", address: "Dubai, UAE", description: "Spacious penthouse with stunning views", price: 1000, capacity: 8, user: User.second, availability: true })
flat11.photo.attach(io: file11, filename: "luxery_penthouse.png", content_type: "image/png")
flat11.save

puts "Finished!"
