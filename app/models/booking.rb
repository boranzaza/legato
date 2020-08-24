class Booking < ApplicationRecord
  belongs_to :musician, class_name: 'User'
  belongs_to :customer, class_name: 'User'
end
