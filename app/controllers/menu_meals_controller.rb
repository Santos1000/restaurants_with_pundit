class MenuMealsController < ApplicationController
  def index
    @menu_meal = Menu_meal.where(user_id: params[:user_id])
  end

  def new
    # we need @restaurant in our `simple_form_for`
    @restaurant = Restaurant.find(params[:restaurant_id])
    @menu_meal = MenuMeal.new
    authorize @menu_meal
  end
  def create
    @menu_meal = MenuMeal.new(menu_meal_params)
    authorize @menu_meal

    # we need `restaurant_id` to associate menu_meal with corresponding restaurant
    @restaurant = MenuMeal.find(params[:restaurant_id])
    @menu_meal.restaurant = @restaurant
    if @menu_meal.save
      redirect_to restaurant_path(@restaurant), notice: "A new meal was successfully created."
    else
      reder :new
    end
  end

  def destroy
    @menu_meal = MenuMeal.find(params[:id])
    @menu_meal.destroy
    redirect_to restaurant_path(@menu_meal.restaurant), notice: "Restaurant was successfully destroyed."
  end

  private

  def menu_meal_params
    params.require(:menu_meal).permit(:meal_name, :portion_meal, :description_meal, :category_meal, :price_meal)
  end
end
