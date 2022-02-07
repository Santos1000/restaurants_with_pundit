class MenuBeverage < ApplicationRecord
  belongs_to :restaurant
  validates :name_beverage, presence: true, uniqueness: true
end
