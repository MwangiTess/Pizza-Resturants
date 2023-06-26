# puts "🌱 Seeding pizzas..."

# # 10.times do
# #   Pizza.create(
# #     pizza_name: Faker::Food.dish,
# #     pizza_size: Faker::Food.metric_measurement,
# #     ingredients: Faker::Food.ingredient,
# #     # created_at: Faker::Time.between(from: DateTime.now - 30, to: DateTime.now),
# #     # updated_at: Faker::Time.between(from: created_at, to: DateTime.now)
# #   )
# # end

# # Generate 5 sets of fake data for the "resturant_pizzas" table
# 5.times do
#   ResturantPizza.create(
#     ResturantPizza.create(price: 5, pizza_id: 1, resturant_id: 2),
#     ResturantPizza.create(price: 10, pizza_id: 2, resturant_id: 1)

#   )
# end

# # Generate 10 sets of fake data for the "resturants" table
# # 10.times do
# #   Resturant.create(
# #     resturant_name: Faker::Restaurant.name,
# #     address: Faker::Address.full_address,
# #     created_at: Faker::Time.between(from: DateTime.now - 30, to: DateTime.now),
# #     updated_at: Faker::Time.between(from: DateTime.now - 30, to: DateTime.now)
# #   )
# # end

# puts "✅ Done seeding!"


#Restaurant instances
Resturant.create(resturant_name: "Sottocasa NYC", address: "298 Atlantic Ave, Brooklyn, NY 11201")
Resturant.create(resturant_name: "PizzArte", address: "69 W 55th St, New York, NY 10019")

#Pizza instances
Pizza.create(pizza_name: "Cheese", pizza_size: "small", ingredients: "Dough, Tomato Sauce, Cheese")
Pizza.create(pizza_name: "Pepperoni", pizza_size: "medium", ingredients: "Dough, Tomato Sauce, Cheese, Pepperoni")

#RestaurantPizza instances
ResturantPizza.create(price: 5, pizza_id: 1, resturant_id: 2)
ResturantPizza.create(price: 10, pizza_id: 2, resturant_id: 1)

puts 'Done'