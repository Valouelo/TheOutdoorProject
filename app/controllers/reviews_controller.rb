class ReviewsController < ApplicationController
  before_action :set_activity
  before_action :set_review, only: %i[show edit update destroy]
  before_action :authenticate_user!, except: %i[index show]

  def index
    @reviews = @activity.reviews
  end

  def show
  end

  def new
    @review = @activity.reviews.build
  end

  def create
    @review = @activity.reviews.build(review_params)
    @review.user = current_user

    if @review.save
      redirect_to [@activity, @review], notice: 'Review was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @review.update(review_params)
      redirect_to [@activity, @review], notice: 'Review was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @review.destroy
    redirect_to activity_reviews_path(@activity), notice: 'Review was successfully destroyed.'
  end

  private

  def set_activity
    @activity = Activity.find(params[:activity_id])
  end

  def set_review
    @review = @activity.reviews.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
