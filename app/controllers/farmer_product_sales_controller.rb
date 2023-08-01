class FarmerProductSalesController < ApplicationController
    before_action :set_product_sale, only: [:show, :update, :destroy]

  # GET /farmer_product_sales/:id
  def show
    render json: @product_sale
  end

  # POST /farmer_product_sales
  def create
    @product_sale = FarmerProductSale.new(product_sale_params)

    if @product_sale.save
      render json: @product_sale, status: :created
    else
      render json: { errors: @product_sale.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
