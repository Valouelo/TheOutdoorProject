class CreateActivities < ActiveRecord::Migration[7.1]
  def change
    create_table :activities do |t|
      t.time :time
      t.integer :price
      t.string :level
      t.string :category
      t.integer :duration
      t.string :description
      t.references :user, null: false, foreign_key: true
      t.date :date

      t.timestamps
    end
  end
end
