require 'uri'

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # has_one_attached :photo
  has_many :bookings
  has_many :reviews
  has_many :messages
  has_many :chatrooms

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, presence: true, length: { minimum: 8 }
  validates :first_name, :last_name, :phone_number, :address, presence: true

  # Comment if not needed or if its in conflict with our current seed
  # validates :photo, format: { with: URI.regexp }, if: 'photo.present?'
  # validates :video, format: { with: URI.regexp }, if: 'video.present?'
  # validates :facebook, format: { with: URI.regexp }, if: 'facebook.present?'
  # validates :youtube, format: { with: URI.regexp }, if: 'youtube.present?'
  # validates :website, format: { with: URI.regexp }, if: 'website.present?'
  # validates :instagram, format: { with: URI.regexp }, if: 'instagram.present?'

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def average_rating
    reviews = Review.where(musician_id: self.id)
    ratings = reviews.map { |review| review[:rating].to_f }
    ratings.size == 0 ? "#{self.full_name} has no reviews yet!" : ratings.sum / ratings.size
  end

  include PgSearch::Model
  pg_search_scope :search_musician,
    against: [ :first_name, :last_name, :instruments, :ensemble_type ],
    using: {
      tsearch: { prefix: true }
    }

end
