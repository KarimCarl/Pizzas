# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
# #   Character.create(name: "Luke", movie: movies.first)


# db/seeds.rb

# create restaurants
Restaurant.create(name: "JamJam", address: "Nakuru")
Restaurant.create(name: "Galitos", address: "Ngong Road")
Restaurant.create(name: "Pizza Inn", address: "Nyandarua")

# create pizzas
Pizza.create(name: "Pepperoni", ingredients: "Dough, Tomato Sauce, Cheese, Pepperoni")
Pizza.create(name: "PepperoniMush", ingredients: "Dough, Tomato Sauce, Cheese, PepperoniMush")
Pizza.create(name: "Mushroom", ingredients: "Dough, Tomato Sauce, Cheese, Mushroom")

# create restaurant pizzas
RestaurantPizza.create(restaurant_id: 1, pizza_id: 1, price: 10)
RestaurantPizza.create(restaurant_id: 1, pizza_id: 2, price: 15)
RestaurantPizza.create(restaurant_id: 2, pizza_id: 1, price: 12)
RestaurantPizza.create(restaurant_id: 2, pizza_id: 2, price: 18)

