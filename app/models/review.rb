class Review < ApplicationRecord
  RATINGS = (0..5)
  belongs_to :restaurant
  validates :rating, presence: true, numericality: { only_integer: true, in: RATINGS }
  validates :content, presence: true
end
