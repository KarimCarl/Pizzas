class PizzasController < ApplicationController
    #get /pizzas
    def index
        pizzas = Pizza.all
        render json: pizzas, only: [:name, :id, :ingredients]
    end
end
