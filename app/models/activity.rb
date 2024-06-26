class Activity < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_one_attached :photo
  has_many :bookings
  has_many :users, through: :bookings
  has_many :reviews
  has_many :reviewers, through: :reviews, source: :user

  has_one :chatroom
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
