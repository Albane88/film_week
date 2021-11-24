class Movie < ApplicationRecord
  has_many :review, dependent: :destroy
  has_many :watch_parties, dependent: :destroy
  has_one_attached :photo
  belongs_to :movie_date
end
