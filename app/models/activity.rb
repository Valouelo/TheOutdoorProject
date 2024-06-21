class Activity < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_one_attached :photo

  has_many :bookings
  has_many :users, through: :bookings
end
