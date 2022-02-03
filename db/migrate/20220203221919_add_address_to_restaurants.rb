class AddAddressToRestaurants < ActiveRecord::Migration[6.1]
  def change
    add_column :restaurants, :address, :string
    add_column :restaurants, :description_restaurant, :text
    add_column :restaurants, :picture_url, :string
  end
end
