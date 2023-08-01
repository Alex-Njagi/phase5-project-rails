class FarmerProductsController < ApplicationController
  before_action :set_farmer_product, only: [:show, :update, :destroy]

  # GET /farmer_products
  def index
    @farmer_products = FarmerProduct.all
    render json: @farmer_products
  end
  
  # GET /farmer_products/:id
  def show
    render json: @farmer_product
  end

  # POST /farmer_products
  def create
    @farmer_product = FarmerProduct.new(farmer_product_params)

    if @farmer_product.save
      render json: @farmer_product, status: :created
    else
      render json: { errors: @farmer_product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /farmer_products/:id
  def update
    if @farmer_product.update(farmer_product_params)
      render json: @farmer_product
    else
      render json: { errors: @farmer_product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # DELETE /farmer_products/:id
  def destroy
    @farmer_product.destroy
    head :no_content
  end

  private

  def set_farmer_product
    @farmer_product = FarmerProduct.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render json: { error: 'Farmer product not found' }, status: :not_found
  end

  def farmer_product_params
    params.require(:farmer_product).permit(:name, :price)
  end
end
