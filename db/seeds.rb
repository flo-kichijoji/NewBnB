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

# Testing 1 flat seed with photo upload to cloudinary via url:
puts "Creating flat..."
file = URI.open("https://images.unsplash.com/photo-1513517860393-d9bf0651bed8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHRyZWVob3VzZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60%22")
flat1 = Flat.create!({ name: "Treehouse in the forest", address: "Chamigny, Île-de-France, France", description: "Nice treehouse", price: 120, capacity: 4, user_id: 1, availability: true })
puts "Creating flat..."
flat1.photo.attach(io: file, filename: "treehouse.png", content_type: "image/png")
puts "Picture added!"
flat1.save
puts "Flat saved!"

puts "Creating flat..."
file2 = URI.open("https://images.unsplash.com/photo-1556503868-012fa6d205b5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80")
flat2 = Flat.create!({ name: "Cave in the mountains", address: "Stuttgart, Baden-Württemberg, Germany", description: "Nice cave", price: 80, capacity: 8, user_id: 1, availability: true })
flat2.photo.attach(io: file2, filename: "cave.png", content_type: "image/png")
flat2.save
puts "Creating flat..."
file3 = URI.open("https://images.unsplash.com/photo-1624923686627-514dd5e57bae?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80")
flat3 = Flat.create!({ name: "Tent in the woods", address: "Perugia, Umbria, Italy", description: "Nice tent", price: 50, capacity: 2, user_id: 1, availability: true })
flat3.photo.attach(io: file3, filename: "tent.png", content_type: "image/png")
flat3.save
puts "Creating flat..."
file4 = URI.open("https://images.unsplash.com/photo-1632692608995-bee322df2a3b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80")
flat4 = Flat.create!({ name: "Underwater submarine", address: "Coron, MIMAROPA, Philippines", description: "Nice submarine", price: 370, capacity: 4, user_id: 2, availability: true })
flat4.photo.attach(io: file4, filename: "submarine.png", content_type: "image/png")
flat4.save

puts "Finished!"
