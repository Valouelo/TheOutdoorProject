class ActivitiesController < ApplicationController
  def index
    @activitie = @activitie.all
  end

  def new
    @booking = Booking.new
    @user = User.find(params[:user_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @user = User.find(params[:user_id])
    @booking.user = current_user
    @booking.status = "pending"
    if @booking.save
      redirect_to user_booking_path(@user, @booking)
    else
      render template: 'activity/show', status: :unprocessable_entity
    end
  end

  def show_map
  end

  def show
    @user = User.find(params[:id])
    @booking = Booking.new
  end

  def destroy
    @activitie.destroy
    redirect_to activity_index(@activity), notice: 'Activitie was successfully destroyed.'
  end
end
