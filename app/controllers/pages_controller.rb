class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @activities = Activity.all
    @latest_activities = Activity.order(created_at: :desc).limit(6)
  end

  def profile
    @user = current_user
    @reviews = @user.reviews
    @activities = current_user.activities
  end
end
