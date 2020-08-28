class Review < ApplicationRecord
  belongs_to :musician, class_name: 'User'
  belongs_to :customer, class_name: 'User'

  validates :customer_id, :musician_id, presence: true
  validates :rating, presence: true, numericality: { less_than_or_equal_to: 5, only_integer: true }
  validates :content, presence: true, length: {minimum: 5, maximum: 500}, allow_blank: true
end
