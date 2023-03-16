puts "Cleaning database..."
Booking.destroy_all
Review.destroy_all
Flat.destroy_all
User.destroy_all

puts "Creating user..."
user = User.create!({ id: 1, email: "potato@gmail.com", password: "123456", first_name: "Mr. Russet", last_name: "Potato" })
puts "Creating flat..."
flat = Flat.create!({ name: "Treehouse in the forest", address: "Chamigny, Île-de-France, France", description: "Nice treehouse", price: 120, capacity: 4, user_id: 1, availability: true, photo: "https://images.unsplash.com/photo-1513517860393-d9bf0651bed8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHRyZWVob3VzZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60" })
puts "Creating flat..."
flat = Flat.create!({ name: "Cave in the mountains", address: "Stuttgart, Baden-Württemberg, Germany", description: "Nice cave", price: 80, capacity: 8, user_id: 1, availability: true, photo: "https://images.unsplash.com/photo-1556503868-012fa6d205b5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80" })
puts "Creating flat..."
flat = Flat.create!({ name: "Tent in the woods", address: "Perugia, Umbria, Italy", description: "Nice tent", price: 50, capacity: 2, user_id: 1, availability: true, photo: "https://images.unsplash.com/photo-1624923686627-514dd5e57bae?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80" })
puts "Creating flat..."
flat = Flat.create!({ name: "Underwater submarine", address: "Coron, MIMAROPA, Philippines", description: "Nice submarine", price: 370, capacity: 4, user_id: 1, availability: true, photo: "https://images.unsplash.com/photo-1632692608995-bee322df2a3b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80" })


puts "Finished!"
