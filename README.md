# BDD:

## Restaurant Pizzas

- To Add a new restaurant pizza
Given a pizza with id 1 exists
And a restaurant with id 3 exists
When a user submits a request to create a new restaurant pizza with price 5, pizza id 1, and restaurant id 3
Then a new restaurant pizza is created with the given data
And the response includes the data related to the pizza

- To Get all pizzas for a restaurant
Given a restaurant with id 1 exists
And the restaurant has 2 pizzas associated with it
When a user submits a request to get all pizzas for the restaurant with id 1
Then the response includes all the pizzas associated with the restaurant

- To Delete a restaurant
Given a restaurant with id 1 exists
When a user submits a request to delete the restaurant with id 1
Then the restaurant is removed from the database
And any associated restaurant pizzas are also removed
And the response is an empty body

- To Get all restaurants
Given there are multiple restaurants in the database
When a user submits a request to get all restaurants
Then the response includes all the restaurants in the database

- To Get a restaurant by id
Given a restaurant with id 1 exists
When a user submits a request to get the restaurant with id 1
Then the response includes the restaurant data
And the response includes all the pizzas associated with the restaurant

- To Delete a non-existent restaurant
Given there is no restaurant with id 1 in the database
When a user submits a request to delete the restaurant with id 1
Then the response includes an error message
And the appropriate HTTP status code is returned

- To Get a non-existent restaurant
Given there is no restaurant with id 1 in the database
When a user submits a request to get the restaurant with id 1
Then the response includes an error message
And the appropriate HTTP status code is returned

# Pseudocode:

- GET /restaurants
function getAllRestaurants() {
-  Retrieve all restaurants from database
const restaurants = Restaurant.findAll();

- Map the restaurants to the desired response format
const response = restaurants.map(restaurant => {
return {
id: restaurant.id,
name: restaurant.name,
address: restaurant.address
};
});

- Return the response
return response;
}

- GET /restaurants/:id
function getRestaurantById(id) {
- Retrieve the restaurant with the given id from database
const restaurant = Restaurant.findById(id);

- If restaurant is not found, return an error message
if (!restaurant) {
return { error: 'Restaurant not found' };
}

- Retrieve all pizzas associated with the restaurant
const pizzas = restaurant.getPizzas();

- Map the pizzas to the desired response format
const pizzasResponse = pizzas.map(pizza => {
return {
id: pizza.id,
name: pizza.name,
ingredients: pizza.ingredients
};
});

- Map the restaurant to the desired response format
const response = {
id: restaurant.id,
name: restaurant.name,
address: restaurant.address,
pizzas: pizzasResponse
};

- Return the response
return response;
}

- DELETE /restaurants/:id

function deleteRestaurant(id) 

- Retrieve the restaurant with the given id from database

const restaurant = Restaurant.findById(id);

- If restaurant is not found, return an error message
if (!restaurant) {
return { error: 'Restaurant not found' };
}

- Remove all associated restaurant pizzas from the database

restaurant.deleteAllPizzas();

- Remove the restaurant from the database
restaurant.delete();

## Description

The project requires creating a web application for managing pizza restaurants and their menu. The application should have three models: Restaurant, Pizza, and RestaurantPizza. The relationships between them should be established such that a Restaurant has many Pizzas through RestaurantPizza, and a Pizza has many Restaurants through RestaurantPizza. The RestaurantPizza belongs to a Restaurant and a Pizza.

The RestaurantPizza model should have a validation that ensures the price is between 1 and 30.

The application should have the following routes with appropriate HTTP verbs and responses:

GET /restaurants: Returns an array of JSON objects containing the id, name, and address of all the restaurants in the database.
GET /restaurants/:id: Returns a JSON object containing the id, name, and address of the restaurant with the specified id, along with an array of all the Pizzas served at the restaurant with their id, name, and ingredients. If the Restaurant does not exist, return a JSON object with an error key and the appropriate HTTP status code.
DELETE /restaurants/:id: Deletes the restaurant with the specified id from the database and all RestaurantPizzas associated with it. If the Restaurant does not exist, return a JSON object with an error key and the appropriate HTTP status code.
GET /pizzas: Returns an array of JSON objects containing the id, name, and ingredients of all the Pizzas in the database.
POST /restaurant_pizzas: Creates a new RestaurantPizza associated with an existing Pizza and Restaurant. The request should contain a JSON object with price, pizza_id, and restaurant_id keys. If the RestaurantPizza is created successfully, return a JSON object containing the id, name, and ingredients of the Pizza associated with it. If the RestaurantPizza is not created successfully, return a JSON object with an errors key and the appropriate HTTP status code.

## REQUIREMENTS FOR USE

### Prerequisites

- For you to use the content on this repo ensure you have the following:

- node v14.17.4 and above

- A computer that runs on either of the following; (Linux, Mac OS and Windows)

- nodejs 9.0+

- Vue 2.6.11

- Status:

- maintained and is currently under development
- Version: - v0.1.0

- Setup instructions

- To use this repository on your machine requires some simple steps:

   - Open a terminal / command line interface on your computer

   - Clone the repository

- Change directory to the repo folder:

   - cd pizza-code-challenge

- Open it in Visual Studio Code

    - code .

- bundle install to install all the dependancies

- rails db:migrate

- rails db:seed

- rails s to start server

- Authors:

   - [Charles Ndung'u]

- License

    - This project is licensed under the MIT License
