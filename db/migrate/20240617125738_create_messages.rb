class CreateMessages < ActiveRecord::Migration[7.1]
  def change
    create_table :messages do |t|
      t.string :content
      t.integer :chatroom_id
      t.integer :user_id
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
