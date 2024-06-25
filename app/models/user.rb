class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # has_secure_password
  has_many :reviews, dependent: :destroy
  has_many :reviewed_activities, through: :reviews, source: :activity
  has_many :bookings, dependent: :destroy
  has_many :activities
  has_many :messages

  has_one_attached :photo
  # validates :username, presence: true, uniqueness: true
  # validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  # validates :status, presence: true
  # validates :description, length: { maximum: 500 }
  def age
    return unless date_of_birth

    now = Time.now.utc.to_date
    now.year - date_of_birth.year - (date_of_birth.to_date.change(year: now.year) > now ? 1 : 0)
  end
end
