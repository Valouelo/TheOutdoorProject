class AddUserNameAndStatusAndDateOfBirthToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :username, :string
    add_column :users, :status, :string
    add_column :users, :date_of_birth, :date
  end
end
