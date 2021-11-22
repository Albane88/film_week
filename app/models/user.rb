class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :attendee, :watch_party, :review

  validates :name, presence: true, uniqueness: true
  validates :email, presence: true
  validates :password, length: { in: 6..20 }
end
