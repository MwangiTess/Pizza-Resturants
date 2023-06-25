class ResturantsController < ApplicationController

    def index
        restaurant = Resturant.all
        render json: restaurant
      end

      def show
          restaurant = Resturant.find_by(id: params[:id])
          render json: restaurant
      end
    
      def create
        restaurant = Resturant.create(pizza_params)
        render json: pizza, status: :created
      end
    
      def update
        restaurant = Resturant.find_by(id: params[:id])
        restaurant.update(pizza_params)
        render json: restaurant
      end
    
      def destroy
        restaurant = Resturant.find_by(id: params[:id])
        restaurant.destroy
        head :no_content
      end
    
      private
      
      def pizza_params
        params.permit(:resturant_name, :address)
      end

end
