class Lesson < ApplicationRecord
  belongs_to :coach
  has_many :bookings
end
