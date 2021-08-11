class RestaurantsController < ApplicationController

  before_action :set_restaurant, only: [:show, :edit, :create, :destroy]

#GET "restaurants"

  def index
    @restaurants = Restaurant.all
  end
#A visitor can add a new restaurant, and be redirected to the show view of that new restaurant.
#GET "restaurants/new"

  def new
    @restaurant = Restaurant.new
  end

#POST "restaurants"

#A visitor can see the details of a restaurant, with all the reviews related to the restaurant.
#GET "restaurants/38"
  def show
  end

#A visitor can add a new review to a restaurant
#GET "restaurants/38/reviews/new"
  def edit
  end

#POST "restaurants/38/reviews"
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end


 def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to restaurant_path(@review.restaurant)
  end


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end











  #def top
    #@restaurants = Restaurant.where(stars: 5)
  #end

  #def chef
   # @chef = @restaurant.chef_name
 # end
