class Booking < ApplicationRecord
  belongs_to :musician, class_name: 'User'
  belongs_to :customer, class_name: 'User'

  validates :date_time, :location, :customer_id, :musician_id, presence: true
end
