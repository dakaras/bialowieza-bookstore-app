# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create Users
4.times do
  @user = User.create(
    email: Faker::Internet.email,
    name: Faker::Name.name,
    password: Faker::Internet.password(min_length = 6, max_length = 20),
  )
  #@shopping_cart = ShoppingCart.create(user_id: @user.id)
end

# Create Shopping Carts
ShoppingCart.create(user_id: 1)
ShoppingCart.create(user_id: 2)
ShoppingCart.create(user_id: 3)
ShoppingCart.create(user_id: 4)

# Create Authors
10.times do
  @author = Author.create(
    name: Faker::Book.author
  )
  #@book = Book.create(author_id: @author.id)
end

@authors = Author.count

# Create Books
10.times do
  @book = Book.create(
    title: Faker::Book.title,
    genre: Faker::Book.genre,
    author_id: rand(1..@authors)
  )
end

@books = Book.all
@users = User.count

# Create ListItems
@books.each do |book|
  ListItem.create(
    shopping_cart_id: rand(1..@users),
    book_id: book.id
  )
end
