class Booking < ApplicationRecord
  belongs_to :lesson
  belongs_to :user
  has_many :reviews

  validates :user, :lesson, presence: true
end
