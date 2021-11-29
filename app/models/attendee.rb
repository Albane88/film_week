class Attendee < ApplicationRecord
  has_many :messages
  belongs_to :user
  belongs_to :watch_party
end
