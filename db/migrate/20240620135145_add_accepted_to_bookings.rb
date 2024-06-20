class AddAcceptedToBookings < ActiveRecord::Migration[7.1]
  def change
    add_column :bookings, :accepted, :boolean
  end
end
