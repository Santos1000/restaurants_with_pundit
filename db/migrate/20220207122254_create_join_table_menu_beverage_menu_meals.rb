class CreateJoinTableMenuBeverageMenuMeals < ActiveRecord::Migration[6.1]
  def change
    create_join_table :menu_meals, :menu_beverages do |t|
      t.index :menu_meal_id
      t.index :menu_beverage_id
    end
  end
end
