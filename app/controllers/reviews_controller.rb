class ReviewsController < ApplicationController
  before_action :set_activity
  before_action :set_review, only: %i[show edit update destroy]
  before_action :authenticate_user!, except: %i[index show]

  # def index
  #   @reviews = @activity.reviews
  # end

  # def show
  #   @booking = Booking.find(params[:id])
  #   @user = @booking.user
  # end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user

    if @review.save
      redirect_to [@activity, @review], notice: 'Review was successfully created.'
    else
      flash.now[:alert] = 'Oops, something went wrong! Please try again.'
      render :new
    end
  end

  private

  # def set_activity
  #   @activity = Activity.find(params[:activity_id])
  # end

  # def set_review
  #   @review = @activity.reviews.find(params[:id])
  # end

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
