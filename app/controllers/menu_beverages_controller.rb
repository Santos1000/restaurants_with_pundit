class MenuBeveragesController < ApplicationController
  before_action :set_restaurant, only: [ :new, :create ]

  def index
    @menu_beverage = Menu_beverage.where(user_id: params[:user_id])
  end

  def new
    # we need @restaurant in our `simple_form_for`
    @menu_beverage = MenuBeverage.new
    #(permitted_attributes(MenuBeverage))
    authorize @menu_beverage
  end

  def create
    @menu_beverage = MenuBeverage.new(menu_beverage_params)
    # authorize @menu_beverage

    # we need `restaurant_id` to associate menu_beverage with corresponding restaurant
    @menu_beverage.restaurant = @restaurant
    if @menu_beverage.save
      redirect_to restaurant_path(@restaurant), notice: "Beverage was successfully created."
    else
      render :new
    end
  end

  def destroy
    @menu_beverage = MenuBeverage.find(params[:id])
    authorize @menu_beverage
    @menu_beverage.destroy
    redirect_to restaurant_path(@menu_beverage.restaurant), notice: "Beverage was successfully destroyed."
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
    authorize @restaurant
  end

  def menu_beverage_params
    params.require(:menu_beverage).permit(:name_beverage, :portion_meal, :description_meal, :category_meal, :price_meal)
  end
end
