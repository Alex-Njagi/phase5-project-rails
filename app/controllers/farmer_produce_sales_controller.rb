class FarmerProduceSalesController < ApplicationController
    before_action :set_produce_sale, only: [:show, :update, :destroy]

  # GET /farmer_produce_sales/:id
  def show
    render json: @produce_sale
  end

  # POST /farmer_produce_sales
  def create
    @produce_sale = FarmerProduceSale.new(produce_sale_params)

    if @produce_sale.save
      render json: @produce_sale, status: :created
    else
      render json: { errors: @produce_sale.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
