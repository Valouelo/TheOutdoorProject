class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all

    @activities = @activities.where('date >= ?', params[:start_date]) if params[:start_date].present?
    @activities = @activities.where('date <= ?', params[:end_date]) if params[:end_date].present?
    @activities = @activities.where('capacity >= ?', params[:capacity]) if params[:capacity].present?
    @activities = @activities.where(level: params[:level]) if params[:level].present?
  end

  def index_with_map
    @activities = Activity.all
  end

  def new
    # @booking = Booking.new
    @activity = Activity.new
  end

  def show
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

  def destroy
    @activity.destroy
    redirect_to activity_index(@activity), notice: 'Activity was successfully destroyed.'
  end

  private

  def booking_params
    params.require(:activity).permit(:title, :description, :start_date, :end_date, :num_people, :level, :photo)
  end
end
