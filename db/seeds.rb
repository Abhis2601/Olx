# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
<<<<<<< HEAD

c1=Category.create([{name:'Electronic and Appliances'},{name:'Mobile'},{name:'Cars'},{name:'Bike'},{name:'Furniture'},{name:'Books'}])

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
=======
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
>>>>>>> addfc9e (21 July modification)
