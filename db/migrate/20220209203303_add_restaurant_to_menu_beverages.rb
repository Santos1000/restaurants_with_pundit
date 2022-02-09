class AddRestaurantToMenuBeverages < ActiveRecord::Migration[6.1]
  def change
    add_reference :menu_beverages, :restaurant, null: false, foreign_key: true
  end
end
