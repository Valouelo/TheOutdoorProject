class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show edit update destroy]
  before_action :authenticate_user!

  def index
    @bookings = current_user.bookings
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @activity = Activity.find(params[:activity_id])
    @capacity = params[:capacity].to_i
    @booking_numbers = params[:booking_numbers].to_i
    new_capacity = @activity.capacity - @activity.bookings.where(accepted: true).count
    if @booking_numbers <= new_capacity
      @booking = Booking.create(user: current_user, activity: @activity, number: @booking_numbers)
    else
      render :new
    end
    if @booking.save
      redirect_to profile_path, alert: 'La réservation a été créée avec succès.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(accepted: params[:booking][:accepted])
    if @booking.update(booking_params)
      redirect_to profile_path(anchor: "bottom"), notice: 'La réservation a été mise à jour avec succès.'
    else
      render :edit
    end
  end

  def destroy
    @booking.destroy
    redirect_to bookings_url, notice: 'La réservation a été supprimé avec succès.'
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:activity_id)
  end
end
