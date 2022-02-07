class MenuBeverage < ApplicationRecord
  belongs_to :restaurant
  validates :name_beverage, presence: true
end
