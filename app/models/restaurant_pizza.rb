class RestaurantPizza < ApplicationRecord
  belongs_to :restaurant
  belongs_to :pizza
  
  #Validates prices under 1 and above 30
  validates :price, inclusion: { in: 1..30 }
end
