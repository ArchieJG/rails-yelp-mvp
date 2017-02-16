class ReviewsController < ApplicationController
  before_action :set_restaurant

  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(reviews_params)

    @review.restaurant = @restaurant

    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  def set_restaurant
   @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def reviews_params
   params.require(:review).permit(:content, :rating)
  end
end
