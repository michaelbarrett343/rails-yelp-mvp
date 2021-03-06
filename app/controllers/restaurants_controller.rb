class RestaurantsController < ApplicationController
    before_action :find_restaurant, only: [:show, :edit, :update, :destroy]
    def index
        @restaurants = Restaurant.all
    end

    def show
    end
    
    def new
        @restaurant = Restaurant.new
    end

    private
    def find_restaurant
        @restaurant = Restaurant.find(params[:id])
      end
end
