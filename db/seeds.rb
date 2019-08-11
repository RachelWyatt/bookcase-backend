# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: "Rachel", email: "Rachel@example.com", password: "password")
Bookcase.create(name: "Fiction", user_id: 1)
Book.create(title: "The Fifth Season", author: "N.K. Jemisin", cover_img_url: "https://www.goodreads.com/book/photo/19161852-the-fifth-season", page_count: 468, bookcase_id: 1)