class FarmerProductSalesController < ApplicationController
    before_action :set_product_sale, only: [:show, :update, :destroy]

    # GET /farmer_product_sales
  # def index
  #   @farmer_product_sales = FarmerProductSale.all
  #   render json: @farmer_product_sales, except: [:sale_total]
  # end
  
  # # GET /farmer_product_sales/:id
  # def show
  #   render json: @product_sale, except: [:sale_total]
  # end

  # POST /farmer_product_sales
  def create
    @product_sale = FarmerProductSale.new(product_sale_params)

    if @product_sale.save
      render json: @product_sale, except: [:sale_total], status: :created
    else
      render json: { errors: @product_sale.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /farmer_product_sales/:id
  # def update
  #   if @product_sale.update(product_sale_params)
  #     render json: @product_sale
  #   else
  #     render json: { errors: @product_sale.errors.full_messages }, status: :unprocessable_entity
  #   end
  # end

  #  # DELETE /farmer_product_sales/:id
  # def destroy
  #   @product_sale.destroy
  #   head :no_content
  # end

  private

  def set_product_sale
    @product_sale = FarmerProductSale.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render json: { error: 'Farmer product sale not found' }, status: :not_found
  end

  def product_sale_params
    params.require(:farmer_product_sale).permit(:quantity, :user_id, :farmer_product_id)
  end
end
