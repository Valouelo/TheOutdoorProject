class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @activities = Activity.all
    @categories = Category.all
    @latest_activities = Activity.order(created_at: :desc).limit(6)
  end

  def profile
    @user = current_user
    @reviews = @user.reviews
    @activities = current_user.activities
    @booking_to_accept = Booking.includes(:activity).where(activity: { user: current_user })
    @activity = Activity.new

    @my_booking_demand_denied = current_user.bookings.where(accepted: false)
    @my_booking_demand_accepted = current_user.bookings.where(accepted: true)
    @my_activity_demand_accepted = Booking.includes(:activity).where(accepted: true).where(activity: { user: current_user })
    @my_activity_demand_refused = Booking.includes(:activity).where(accepted: false).where(activity: { user: current_user })

    # @pending_bookings = Booking.where(activity: @activities).where(accepted: nil)
  end
end
