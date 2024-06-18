class AddNameToActivities < ActiveRecord::Migration[7.1]
  def change
    add_column :activities, :name, :string
  end
end
