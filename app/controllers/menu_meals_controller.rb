class MenuMealsController < ApplicationController
  def new
    # we need @restaurant in our `simple_form_for`
    @restaurant = Restaurant.find(params[:restaurant_id])
    @menu_meal = Menu_meal.new
  end
  def create
    @menu_meal = menu_meal.new(menu_meal_params)
    # we need `restaurant_id` to associate menu_meal with corresponding restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
    @menu_meal.restaurant = @restaurant
    if @menu_meal.save
      redirect_to restaurant_path(@restaurant)
    else
      reder :new
    end
  end

  def destroy
    @menu_meal = Menu_meal.find(params[:id])
    @menu_meal.destroy
    redirect_to restaurant_path(@menu_meal.restaurant)
  end

  private

  def menu_meal_params
    params.require(:menu_meal).permit(:content)
  end
end
