class Movie < ApplicationRecord
  has_many :review, dependent: :destroy
  has_many :watch_parties, dependent: :destroy
  belongs_to :movie_date
end
