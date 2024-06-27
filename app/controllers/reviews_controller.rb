class ReviewsController < ApplicationController
  before_action :set_activity
  # before_action :set_review, only: %i[show edit update destroy]
  # before_action :authenticate_user!, except: %i[index show]

  def index
    @reviews = @activity.reviews
  end

  def show
    @booking = Booking.find(params[:id])
    @user = @booking.user
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @review.activity = @activity
    @booking = Booking.find_by(user: current_user, activity: @activity)
    @booking.update(reviewed: true)

    if @review.save
      redirect_to profile_path(current_user), notice: "L'avis a été créé avec succès."
    else
      flash.now[:alert] = "Oups, une erreur s'est produite ! Veuillez réessayer."
      render :new
    end
  end

  private

  def set_activity
    @activity = Activity.find(params[:activity_id])
  end

  def set_review
    @review = @activity.reviews.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
