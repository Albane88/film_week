class WatchParty < ApplicationRecord
  belongs_to :user
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  belongs_to :movie
  has_many :attendees
  has_many :messages, through: :attendees

end
