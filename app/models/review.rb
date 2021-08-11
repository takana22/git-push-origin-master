class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates :restaurant_id, presence: true
  validates :rating, presence: true
end
end
