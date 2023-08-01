class FarmerProductSalesController < ApplicationController
    before_action :set_product_sale, only: [:show, :update, :destroy]

  # GET /farmer_product_sales/:id
  def show
    render json: @product_sale
  end
end
