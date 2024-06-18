class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all
  end

  def new
    @booking = Booking.new
    @user = User.find(params[:user_id])
  end

  def show
    # @user = User.find(params[:id])
    # @booking = Booking.new
    @activity = Activity.find(params[:id])
  end

  def create
    @activity = Activity.new(booking_params)
    @user = User.find(params[:user_id])
    @activity.user = current_user
    if @activity.save
      redirect_to user_booking_path(@user, @booking)
    else
      render template: 'activity/show', status: :unprocessable_entity
    end
  end

  def map
  end

  def destroy
    @activitie.destroy
    redirect_to activity_index(@activity), notice: 'Activitie was successfully destroyed.'
  end
end
