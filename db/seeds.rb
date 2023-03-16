puts "Cleaning database..."
Booking.destroy_all
Review.destroy_all
Flat.destroy_all
User.destroy_all

puts "Creating user..."
user1 = User.create!({ id: 1, email: "potato@gmail.com", password: "123456", first_name: "Mr. Russet", last_name: "Potato" })
user2 = User.create!({ id: 2, email: "tomato@gmail.com", password: "123456", first_name: "Mr. Tomato", last_name: "Sarada" })
puts "Creating flat..."
flat = Flat.create!({ name: "Treehouse in the forest", address: "Chamigny, Île-de-France, France", description: "Nice treehouse", price: 120, capacity: 4, user_id: 1, availability: true, photo: "https://images.unsplash.com/photo-1513517860393-d9bf0651bed8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHRyZWVob3VzZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60" })
puts "Creating flat..."
flat = Flat.create!({ name: "Cave in the mountains", address: "Stuttgart, Baden-Württemberg, Germany", description: "Nice cave", price: 80, capacity: 8, user_id: 1, availability: true, photo: "https://images.unsplash.com/photo-1556503868-012fa6d205b5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80" })
puts "Creating flat..."
flat = Flat.create!({ name: "Tent in the woods", address: "Perugia, Umbria, Italy", description: "Nice tent", price: 50, capacity: 2, user_id: 1, availability: true, photo: "https://images.unsplash.com/photo-1624923686627-514dd5e57bae?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80" })
puts "Creating flat..."
flat = Flat.create!({ name: "Underwater submarine", address: "Coron, MIMAROPA, Philippines", description: "Nice submarine", price: 370, capacity: 4, user_id: 2, availability: true, photo: "https://images.unsplash.com/photo-1632692608995-bee322df2a3b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80" })
puts "Creating flat..."
flat = Flat.create!({ name: "Modern Loft in Downtown", address: "New York, NY, USA", description: "Beautiful loft with a city view", price: 250, capacity: 2, user_id: 1, availability: true, photo: "https://images.unsplash.com/photo-1594872653896-21c0b452d605?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80" })
puts "Creating flat..."
flat = Flat.create!({ name: "Seaside Villa", address: "Cancun, Mexico", description: "Luxurious villa with ocean view", price: 500, capacity: 6, user_id: 1, availability: true, photo: "https://images.unsplash.com/photo-1631645033513-15144f920557?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80" })
puts "Creating flat..."
flat = Flat.create!({ name: "Mountain Cabin", address: "Banff, Alberta, Canada", description: "Cozy cabin in the Rocky Mountains", price: 180, capacity: 4, user_id: 1, availability: true, photo: "https://images.unsplash.com/photo-1482192505345-5655af888cc4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1856&q=80" })
puts "Creating flat..."
flat = Flat.create!({ name: "Beachfront Apartment", address: "Miami, FL, USA", description: "Stunning apartment with ocean view", price: 300, capacity: 4, user_id: 1, availability: true, photo: "https://images.unsplash.com/photo-1561799461-445437ea576b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80" })
puts "Creating flat..."
flat = Flat.create!({ name: "Charming Cottage", address: "Cotswolds, England", description: "Quaint cottage in the English countryside", price: 150, capacity: 2, user_id: 1, availability: true, photo: "https://images.unsplash.com/photo-1498176126716-a01bc267f662?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1924&q=80" })
puts "Creating flat..."
flat = Flat.create!({ name: "Rustic Farmhouse", address: "Tuscany, Italy", description: "Traditional farmhouse with a rustic feel", price: 200, capacity: 6, user_id: 1, availability: true, photo: "https://images.unsplash.com/photo-1543372165-23cb16764356?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80" })
puts "Creating a flat..."
flat = Flat.create!({ name: "Luxury Penthouse", address: "Dubai, UAE", description: "Spacious penthouse with stunning views", price: 1000, capacity: 8, user_id: 1, availability: true, photo: "https://images.unsplash.com/photo-1560448204-e02f11c3d0e2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80" })

puts "Finished!"
