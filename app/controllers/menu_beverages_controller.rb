class MenuBeveragesController < ApplicationController
  def new
    # we need @restaurant in our `simple_form_for`
    @restaurant = Restaurant.find(params[:restaurant_id])
    @menu_berage = Menu_berage.new
  end

  def create
    @menu_beverage = menu_beverage.new(menu_beverage_params)
    # we need `restaurant_id` to associate menu_beverage with corresponding restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
    @menu_beverage.restaurant = @restaurant
    if @menu_beverage.save
      redirect_to restaurant_path(@restaurant)
    else
      reder :new
    end
  end

  def destroy
    @menu_beverage = Menu_beverage.find(params[:id])
    @menu_beverage.destroy
    redirect_to restaurant_path(@menu_beverage.restaurant)
  end

  private

  def menu_beverage_params
    params.require(:menu_beverage).permit(:content)
  end
end
