# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

restaurants = [
  {
  name: "mecs au camion",
  address: "toulouse",
  phone_number: "0561345678",
  category: "chinese"
  },
  {
    name: "velo végé",
    address: "toulouse",
    phone_number: "0561340987",
    category: "italian"
  },
  {
    name: "bahn mi",
    address: "toulouse",
    phone_number: "0561345634",
    category: "japanese"
  },
  {
    name: "Ali 2000",
    address: "toulouse",
    phone_number: "0561349078",
    category: "french"
  },
  {
    name: "India love",
    address: "toulouse",
    phone_number: "0561345123",
    category: "belgian"
  }
]
# reviews = [
#   {
#     content: [
#       "très bon resto",
#       "super!!",
#       "a chier!!"
#     ]
#   }
# ]

puts "Creating restaurants..."
restaurants.each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

# reviews.each do |attributes|
#   review = Review.create!(attributes)
#   puts "Created review"
# end

puts "Finished!"
