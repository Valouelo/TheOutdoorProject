class AddCategoryToActivities < ActiveRecord::Migration[7.1]
  def change
    add_reference :activities, :category, null: false, foreign_key: true
  end
end
