class AddLocationToActivities < ActiveRecord::Migration[7.1]
  def change
    add_column :activities, :location, :string
    add_column :activities, :capacity, :integer
  end
end
