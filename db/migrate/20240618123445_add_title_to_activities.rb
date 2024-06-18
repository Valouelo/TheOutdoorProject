class AddTitleToActivities < ActiveRecord::Migration[7.1]
  def change
    add_column :activities, :title, :string
  end
end
