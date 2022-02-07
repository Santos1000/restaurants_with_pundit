class MenuBeveragesController < ApplicationController
  def new
    # we need @restaurant in our `simple_form_for`
    @restaurant = Restaurant.find(params[:restaurant_id])
    @menu_meal = Menu_meal.new
  end
end
