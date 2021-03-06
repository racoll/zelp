class RestaurantsController < ApplicationController
  def new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    @restaurant.save
    redirect_to @restaurant
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def index
    @restaurants = Restaurant.all
  end

  private
  def restaurant_params
    params.require(:restaurant).permit(:title, :text)
  end

end
