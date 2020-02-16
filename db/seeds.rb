# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create prodcutds
p1 = Product.create!(name: 'A', cost: 100.00)
p2 = Product.create!(name: 'B', cost: 130.00)
p3 = Product.create!(name: 'C', cost: 400.00)

# Create users
u1 = User.create!(name: 'User 1')
u2 = User.create!(name: 'User 2')
u3 = User.create!(name: 'User 3')

# Create orders for users

o1 = Order.create!(user_id: u1.id )
o2 = Order.create!(user_id: u2.id )
o3 = Order.create!(user_id: u3.id )

# Add produts to orders
# 1st user's, products and rating
OrderProduct.create!(order_id: u1.id, product_id: p1.id, cost: p1.cost, rating: 1)
OrderProduct.create!(order_id: u1.id, product_id: p2.id, cost: p2.cost, rating: 3)
OrderProduct.create!(order_id: u1.id, product_id: p3.id, cost: p3.id, rating: 4)

# 2nd user's products and rating
OrderProduct.create!(order_id: u2.id, product_id: p1.id, cost: p1.cost, rating: 2)
OrderProduct.create!(order_id: u2.id, product_id: p2.id, cost: p2.cost, rating: 5)
OrderProduct.create!(order_id: u2.id, product_id: p3.id, cost: p3.cost, rating: 4)

# 3rd user's products and rating
OrderProduct.create!(order_id: u3.id, product_id: p1.id, cost: p1.cost, rating: 1)
OrderProduct.create!(order_id: u3.id, product_id: p2.id, cost: p2.cost, rating: 1)
OrderProduct.create!(order_id: u3.id, product_id: p3.id, cost: p3.cost, rating: 4)

# Product 1 ratings: 1, 2, 1
# Product 2 ratings: 3, 5, 1
# Product 3 ratings: 4, 4, 4
