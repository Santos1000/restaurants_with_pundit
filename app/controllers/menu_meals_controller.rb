class MenuMealsController < ApplicationController
  before_action :set_restaurant, only: [ :new, :create ]

  def index
    @menu_meal = MenuMeal.where(user_id: params[:user_id])
  end

  def new
    @menu_meal = MenuMeal.new
    authorize @menu_meal
  end
  def create
    @menu_meal = MenuMeal.new(menu_meal_params)
    @menu_meal.restaurant = @restaurant
    if @menu_meal.save
      redirect_to restaurant_path(@restaurant), notice: "A new meal was successfully created."
    else
      render :new
    end
  end

  def destroy
    @menu_meal = MenuMeal.find(params[:id])
    authorize @menu_meal
    @menu_meal.destroy
    redirect_to restaurant_path(@menu_meal.restaurant), notice: "Restaurant was successfully destroyed."
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
    authorize @restaurant
  end

  def menu_meal_params
    params.require(:menu_meal).permit(:meal_name, :portion_meal, :description_meal, :category_meal, :price_meal, :photo)
  end
end
