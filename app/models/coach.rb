class Coach < ApplicationRecord
  belongs_to :specialty
  has_many :lessons
end
