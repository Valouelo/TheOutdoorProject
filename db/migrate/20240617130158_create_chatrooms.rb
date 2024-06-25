class CreateChatrooms < ActiveRecord::Migration[7.1]
  def change
    create_table :chatrooms do |t|
      t.references :activity, null: false, foreign_key: true
      # activity_id
      t.timestamps
    end
  end
end
