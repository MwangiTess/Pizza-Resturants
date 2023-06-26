class PizzasController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  # GET /pizza
  def index
    pizza = Pizza.all
    render json: pizza
  end

  # POST /pizza
  def create
    pizza = Pizza.create!(pizza_params)
    render json: pizza, status: :created
  end

  # GET /pizza/:id
  def show
    pizza = find_pizza
    render json: pizza
  end

  # PATCH /pizza/:id
  def update
    pizza = find_pizza
    pizza.update!(pizza_params)
    render json: pizza
  end

  # DELETE /pizza/:id
  def destroy
    pizza = find_pizza
    pizza.destroy
    head :no_content
  end

  private

  def find_pizza
    Pizza.find(params[:id])
  end

  def pizza_params
    params.permit(:pizza_name, :pizza_size, :ingredients)
  end

  def render_not_found_response
    render json: { error: "Pizza  not found" }, status: :not_found
  end

end
