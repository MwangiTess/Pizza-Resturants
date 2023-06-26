# puts "🌱 Seeding pizzas..."

#Restaurant instances
Resturant.create(resturant_name: "Sottocasa NYC", address: "298 Atlantic Ave, Brooklyn, NY 11201")
Resturant.create(resturant_name: "PizzArte", address: "69 W 55th St, New York, NY 10019")

#Pizza instances
Pizza.create(pizza_name: "Cheese", pizza_size: "small", ingredients: "Dough, Tomato Sauce, Cheese")
Pizza.create(pizza_name: "Pepperoni", pizza_size: "medium", ingredients: "Dough, Tomato Sauce, Cheese, Pepperoni")

#RestaurantPizza instances
ResturantPizza.create(price: 5, pizza_id: 1, resturant_id: 2)
ResturantPizza.create(price: 10, pizza_id: 2, resturant_id: 1)


# puts "✅ Done seeding!"
