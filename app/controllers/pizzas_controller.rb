class PizzasController < ApplicationController
  wrap_parameters format: []
      
      
     def index
      pizza = Pizza.all
      render json: pizza
    end

    def show
      pizza = Pizza.find_by(id: params[:id])
      render json: pizza
    end
      
    def create
      pizza = Pizza.create(pizza_params)
      render json: pizza, status: :created
    end
      
    def update
      pizza = Pizza.find_by(id: params[:id])
      pizza.update(pizza_params)
      render json: pizza
    end
      
    def destroy
      pizza = Pizza.find_by(id: params[:id])
      pizza.destroy
      head :no_content
    end
      
        private
        
        def pizza_params
          params.permit(:pizza_name, :pizza_size, :ingredients)
        end
      
      
end
