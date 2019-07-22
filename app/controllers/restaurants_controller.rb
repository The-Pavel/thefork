class RestaurantsController < ApplicationController

  # fake database
  RESTAURANTS = {
    1 => { name: "Lost Heaven", address: "the Bund", category: "yunnan" },
    2 => { name: "Pollux", address: "Xintiandi", category: "french" }
  }

  def create
    render plain: "You created a resto with name #{params[:name]} and location #{params[:address]}"
    # With a database:
    # name = params[:name]
    # address = params[:address]
    # resto = Restaurant.new(name: name, address: address)
    # resto.save
  end

  def show
    @restaurant = RESTAURANTS[params[:id].to_i]
    # With a database:
    # @restaurant = Restaurant.find(params[:id].to_i)
  end

  def index
    # making a condition to render only specific restaurants if there is user input, coming from the params
    if params[:food_type]
      @category = params[:food_type]
      @restaurants = RESTAURANTS.select {|key, resto| resto[:category] == @category}
    else
      @restaurants = RESTAURANTS
    end
    # getting all restaurants with a database:
    # @restaurants = Restaurant.all
  end

end
