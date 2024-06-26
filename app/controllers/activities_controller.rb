class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all

    @categories = Category.all

    @activity = Activity.new

    if params[:category_name].present?
      @activities = @activities.select {|activity| activity.category.name == params[:category_name]}
    end

    return @activities unless params[:query].present?

    @activities = @activities.where('date >= ?', params[:query][:start_date]) if params[:query][:start_date].present?
    @activities = @activities.where('date <= ?', params[:query][:end_date]) if params[:query][:end_date].present?
    @activities = @activities.where('capacity >= ?', params[:query][:capacity]) if params[:query][:capacity].present?
    @activities = @activities.where(level: params[:query][:level]) if params[:query][:level].present?


  end

  def index_with_map
    @activities = Activity.all
    @markers = @activities.geocoded.map do |activity|
      {
        lat: activity.latitude,
        lng: activity.longitude,
        info_window_html: render_to_string(partial: "info_map_activities", locals: { activity: activity })
      }
    end
  end

  def new
    # @booking = Booking.new
    @activity = Activity.new
  end

  def show
    @activity = Activity.find(params[:id])
  end

  def create
    @activity = Activity.new(activity_params)
    @activity.user = current_user

    if @activity.save!
      Chatroom.create!(activity: @activity)
      redirect_to activity_path(@activity)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @activity.destroy
    redirect_to activity_index(@activity), notice: 'Activity was successfully destroyed.'
  end

  private

  def activity_params
    params.require(:activity).permit(:name, :description, :category_id, :date, :duration, :level, :photo, :price)
  end
end
