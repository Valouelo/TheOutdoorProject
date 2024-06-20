class Activity < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :bookings
  has_many :users, through: :bookings
end
