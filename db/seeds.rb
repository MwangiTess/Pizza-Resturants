puts "🌱 Seeding pizzas..."

10.times do
  Pizza.create(
    pizza_name: Faker::Food.dish,
    pizza_size: Faker::Food.metric_measurement,
    ingredients: Faker::Food.ingredient,
    # created_at: Faker::Time.between(from: DateTime.now - 30, to: DateTime.now),
    # updated_at: Faker::Time.between(from: created_at, to: DateTime.now)
  )
end

# Generate 5 sets of fake data for the "resturant_pizzas" table
5.times do
  ResturantPizza.create(
    price: Faker::Number.between(from: 1, to: 30),
    resturant_id: Faker::Number.between(from: 1, to: 10),
    pizza_id: Faker::Number.between(from: 1, to: 10)
  )
end

# Generate 10 sets of fake data for the "resturants" table
10.times do
  Resturant.create(
    resturant_name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    created_at: Faker::Time.between(from: DateTime.now - 30, to: DateTime.now),
    updated_at: Faker::Time.between(from: DateTime.now - 30, to: DateTime.now)
  )
end

puts "✅ Done seeding!"