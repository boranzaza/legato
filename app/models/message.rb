class Message < ApplicationRecord
  belongs_to :chatroom
  belongs_to :musician, class_name: 'User'
  belongs_to :customer, class_name: 'User'
end
