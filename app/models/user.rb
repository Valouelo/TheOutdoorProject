class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # has_secure_password
  has_many :reviews, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :activities, through: :reviews

  # validates :username, presence: true, uniqueness: true
  # validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  # validates :status, presence: true
  # validates :description, length: { maximum: 500 }
end
