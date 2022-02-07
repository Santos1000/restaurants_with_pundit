class MenuBeveragesController < ApplicationController
  def index
    @menu_beverage = Menu_beverage.where(user_id: params[:user_id])
  end

  def new
    # we need @restaurant in our `simple_form_for`
    @restaurant = Restaurant.find(params[:restaurant_id])
    @menu_beverage = MenuBeverage.new
    #(permitted_attributes(MenuBeverage))
    authorize @menu_beverage
  end

  def create
    @menu_beverage = MenuBeverage.new(menu_beverage_params)
    # authorize @menu_beverage

    # we need `restaurant_id` to associate menu_beverage with corresponding restaurant
    @restaurant = MenuBeverage.find(params[:restaurant_id])
    @menu_beverage.restaurant = @restaurant
    if @menu_beverage.save
      redirect_to restaurant_path(@restaurant), notice: "Beverage was successfully created."
    else
      reder :new
    end
  end

  def destroy
    @menu_beverage = MenuBeverage.find(params[:id])
    @menu_beverage.destroy
    redirect_to restaurant_path(@menu_beverage.restaurant), notice: "Beverage was successfully destroyed."
  end

  private

  def menu_beverage_params
    params.require(:menu_beverage).permit(:name_beverage, :portion_meal, :description_meal, :category_meal, :price_meal)
  end
end
