class MenuMeal < ApplicationRecord
  belongs_to :restaurant
  validates :meal_name, presence: true, uniqueness: true
  has_one_attached :photo
end
