class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [ :show, :edit, :update, :destroy ]
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @restaurants = policy_scope(Restaurant).order(created_at: :desc)
  end

  def show
  end


  def new
    @restaurant = Restaurant.new
    authorize @restaurant
  end

  def edit
  end

  # POST
  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.user = current_user
    authorize @restaurant
    if @restaurant.save
      redirect_to restaurant_url(@restaurant), notice: "Restaurant was successfully created."
    else
      render :new
    end
  end

  # PATCH/
  def update
    if @restaurant.update(restaurant_params)
      redirect_to restaurant_url(@restaurant), notice: "Restaurant was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_url, notice: "Restaurant was successfully destroyed."
  end

  private
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
    authorize @restaurant
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :current_user, :description, :plates, :beverage, :location, :picture_url)
  end
end
