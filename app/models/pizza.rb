class Pizza < ApplicationRecord
    #relationships
    has_many :restaurant_pizzas
    has_many :restaurants, through: :restaurant_pizzas
end
