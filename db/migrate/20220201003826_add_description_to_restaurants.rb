class AddDescriptionToRestaurants < ActiveRecord::Migration[6.1]
  def change
    add_column :restaurants, :description, :string
    add_column :restaurants, :picture_url, :string
    add_column :restaurants, :plates, :string
    add_column :restaurants, :beverage, :string
  end
end
