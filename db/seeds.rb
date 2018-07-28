# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create Authors
10.times do
  @author = Author.create(
    name: Faker::Book.author
  )
end
@authors = Author.all.size

# Create Books
20.times do
  @book = Book.create(
    title: Faker::Book.title,
    genre: Faker::Book.genre,
    price: rand(5..30),
    summary: Faker::Hipster.paragraphs(6),
    author_id: rand(1..@authors)
  )
end
