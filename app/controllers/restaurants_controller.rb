class RestaurantsController < ApplicationController
    before_action :set_restaurant, only: [:show, :edit, :update, :destroy]
  # before_action :admin? , only: [:new, :edit, :create, :update, :destroy]
  # before_action :authenticate_user!, only: [:index, :new, :create, :show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to @restaurant
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    if @restaurant.update(restaurant_params)
      flash[:success] = ""+:restaurant_name.to_s + " is updated!"
      redirect_to @restaurant
      # Handle a successful update.
    else
      render 'edit'
    end
  end

  private
    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end

    def restaurant_params
      params.require(:restaurant).permit(:restaurant_name, :picture, :address1, :address2,
                                        :postal_code, :contact)
    end

end
