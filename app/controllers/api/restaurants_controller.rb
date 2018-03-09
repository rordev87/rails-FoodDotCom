class Api::RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.near(params[:address], 2)

    if @restaurants
      render :index
    else
      render json: ['Error Processing Address! Please try again'], status: 500
    end
  end

  def show
    @restaurant = Restaurant.find_by(id: params[:id])

    if @restaurant
      render :show
    else
      render json: @restaurant.errors.full_messages, status: 404
    end
  end

end