class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :watch_parties
  has_many :attendees
  has_many :attending_watch_parties, through: :attendees, source: :watch_party
  has_many :reviews

end
