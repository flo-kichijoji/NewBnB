puts "Cleaning database..."
Flat.destroy_all
Booking.destroy_all
Review.destroy_all
User.destroy_all

puts "Creating user..."
user = User.create!({ id: 1, email: "potato@gmail.com", password: "123456" })
puts "Creating flat..."
flat = Flat.create!({ name: "Treehouse in the forest", address: "Chamigny, Île-de-France, France", description: "Nice treehouse", price: 120, capacity: 4, user_id: 1, availability: true })

puts "Finished!"
