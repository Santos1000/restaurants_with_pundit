class AddRestaurantToMenuMeals < ActiveRecord::Migration[6.1]
  def change
    add_reference :menu_meals, :restaurant, null: false, foreign_key: true
  end
end
