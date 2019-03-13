class ReviewsController < ApplicationController
  before_action :set_restaurant, only: [:new, :create]

  def new
    # @restaurant = Restaurant.find(params[:restaurant_id])
    @garden = Garden.find(params[:garden_id])
    @review = Review.new
  end

  def index
    @restaurant = Restaurant.find(params[:restaurant_id])
    # @reviews = Review.where(restaurant_id: @restaurant.id)
    @reviews = @restaurant.reviews
  end

  def create
    # @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    @review.save

    redirect_to restaurant_path(@restaurant)
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
