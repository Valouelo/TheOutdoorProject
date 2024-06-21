class RemoveColumnToActivities < ActiveRecord::Migration[7.1]
  def change
    remove_column :activities, :category
  end
end
