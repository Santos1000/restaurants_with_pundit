class Restaurant < ApplicationRecord
  belongs_to :user
  validates_presence_of :name, :user
  has_many :menu_meals, dependent: :destroy
  has_many :menu_beverages, dependent: :destroy
end
