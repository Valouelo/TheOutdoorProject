class AddReferencesToReviews < ActiveRecord::Migration[7.1]
  def change
    add_reference :reviews, :activity, null: false, foreign_key: true
  end
end
