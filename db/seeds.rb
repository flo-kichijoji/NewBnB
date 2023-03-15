puts "Cleaning database..."
Flat.destroy_all
Booking.destroy_all
Review.destroy_all
User.destroy_all

puts "Creating user..."
user = User.create!({ id: 1, email: "potato@gmail.com", password: "123456" })
puts "Creating flat..."
flat = Flat.create!({ name: "Treehouse in the forest", address: "Chamigny, Île-de-France, France", description: "Nice treehouse", price: 120, capacity: 4, user_id: 1, availability: true })
puts "Creating flat..."
flat = Flat.create!({ name: "Cave in the mountains", address: "Stuttgart, Baden-Württemberg, Germany", description: "Nice cave", price: 120, capacity: 4, user_id: 1, availability: true })
puts "Creating flat..."
flat = Flat.create!({ name: "Tent in the woods", address: "Perugia, Umbria, Italy", description: "Nice tent", price: 120, capacity: 4, user_id: 1, availability: true })
puts "Creating flat..."
flat = Flat.create!({ name: "Underwater submarine", address: "Coron, MIMAROPA, Philippines", description: "Nice submarine", price: 120, capacity: 4, user_id: 1, availability: true })


puts "Finished!"
