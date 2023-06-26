class ResturantsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  # GET /resturants
  def index
    resturant = Resturant.all
    render json: resturant
  end

  # POST /resturant
  def create
    resturant = Resturant.create!(resturant_params)
    render json: resturant, status: :created
  end

  # GET /resturant/:id
  def show
    resturant = find_resturant
    render json: resturant, methods: [:pizzas]
  end

  # PATCH /resturant/:id
  def update
    resturant = find_resturant
    resturant.update!(resturant_params)
    render json: resturant
  end

  # DELETE /resturant:id
  def destroy
    resturant = find_resturant
    resturant.destroy
    head :no_content
  end

  private

  def find_resturant
    Resturant.find(params[:id])
  end

  def resturant_params
    params.permit(:resturant_name, :address)
  end

  def render_not_found_response
    render json: { error: "Restaurant  not found" }, status: :not_found
  end

end
