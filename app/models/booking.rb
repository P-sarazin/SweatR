class Booking < ApplicationRecord
  belongs_to :lesson
  belongs_to :user

  validates :user, :lesson, presence: true
end
