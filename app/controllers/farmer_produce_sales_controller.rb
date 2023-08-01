class FarmerProduceSalesController < ApplicationController
    before_action :set_produce_sale, only: [:show, :update, :destroy]

  # GET /farmer_produce_sales/:id
  def show
    render json: @produce_sale
  end
end
