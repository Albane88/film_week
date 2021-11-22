class Attendee < ApplicationRecord
  has_many :message
  belongs_to :user
  belongs_to :watch_party
end
