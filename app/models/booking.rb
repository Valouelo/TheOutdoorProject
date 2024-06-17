class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :activity

  validates :user_id, presence: true
  validates :activity_id, presence: true
end
