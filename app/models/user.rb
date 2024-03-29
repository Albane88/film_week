class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :watch_parties
  has_many :attendees
  has_many :attending_watch_parties, through: :attendees, source: :watch_party
  has_many :reviews
  has_one_attached :avatar
 # validates :avatar, file_size: { less_than_or_equal_to: 5.megabytes },
  #            file_content_type: { allow: ['image/jpeg', 'image/png', 'image/gif'] }
end
