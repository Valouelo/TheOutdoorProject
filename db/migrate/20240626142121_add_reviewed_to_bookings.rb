class AddReviewedToBookings < ActiveRecord::Migration[7.1]
  def change
    add_column :bookings, :reviewed, :boolean, default: false
  end
end
