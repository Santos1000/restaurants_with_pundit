class CreateMenuMeals < ActiveRecord::Migration[6.1]
  def change
    create_table :menu_meals do |t|
      t.string :meal_name
      t.string :portion_meal
      t.text :description_meal
      t.string :category_meal
      t.decimal :price_meal

      t.timestamps
    end
  end
end
