require 'uri'

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :bookings
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

end
