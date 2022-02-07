class MenuMeal < ApplicationRecord
  belongs_to :restaurant
  validates :meal_name, presence: true, uniqueness: true
end
