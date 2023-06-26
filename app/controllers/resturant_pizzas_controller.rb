class ResturantPizzasController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

  # GET /resturant_pizzas
  def index
    resturant_pizzas = ResturantPizza.all
    render json: resturant_pizzas
  end

  # POST /resturant_pizzas
  def create
    resturant_pizza = ResturantPizza.create!(resturant_pizza_params)
    render json: resturant_pizza, status: :created
  end

  # GET /resturant_pizzas/:id
  def show
    resturant_pizza = find_resturant_pizza
    render json: resturant_pizza
  end

  # PATCH /resturant_pizzas/:id
  def update
    resturant_pizza = find_resturant_pizza
    resturant_pizza.update!(resturant_pizza_params)
    render json: resturant_pizza
  end

  # DELETE /resturant_pizzas/:id
  def destroy
    resturant_pizza = find_resturant_pizza
    resturant_pizza.destroy
    head :no_content
  end

  private

  def find_resturant_pizza
    ResturantPizza.find(params[:id])
  end

  def resturant_pizza_params
    params.permit(:price, :resturant_id, :pizza_id)
  end

  def render_not_found_response
    render json: { error: "Restaurant pizza not found" }, status: :not_found
  end

  def render_unprocessable_entity_response(invalid)
    render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
  end
end
