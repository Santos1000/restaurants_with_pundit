class CreateMenuBeverages < ActiveRecord::Migration[6.1]
  def change
    create_table :menu_beverages do |t|
      t.string :name_beverage
      t.string :portion_beverage
      t.text :description_beverage
      t.string :category_beverage
      t.decimal :price_beverage

      t.timestamps
    end
  end
end
