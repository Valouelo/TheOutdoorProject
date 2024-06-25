class AddColmunToBookings < ActiveRecord::Migration[7.1]
  def change
    add_column :bookings, :rating, :integer
    add_column :bookings, :content, :text
  end
end
