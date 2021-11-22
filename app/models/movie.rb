class Movie < ApplicationRecord
  has_many :review, :watch_party
  belongs_to :movie_date
end
