class Restaurant < ApplicationRecord
    #relationships
    has_many :restaurant_pizzas, dependent: :destroy
    has_many :pizzas, through: :restaurant_pizzas
end
