class MenuBeverage < ApplicationRecord
  belongs_to :restaurant
  validates :name_beverage, presence: true, uniqueness: true
  has_one_attached :photo
end
