class Movie < ApplicationRecord
  has_many :review
  has_many :watch_party
  belongs_to :movie_date
end
