class Booking < ApplicationRecord
  belongs_to :musician, class_name: 'User'
  belongs_to :customer, class_name: 'User'

  validates :date_time, :location, :customer_id, :repertoire_number, :musician_id, presence: true

  def repertoire_name
    if repertoire_number == 1
      musician.repertoire_1
    else
      musician.repertoire_2
    end
  end

  def repertoire_length
    if repertoire_number == 1
      musician.repertoire_1_length
    else
      musician.repertoire_2_length
    end
  end
end

