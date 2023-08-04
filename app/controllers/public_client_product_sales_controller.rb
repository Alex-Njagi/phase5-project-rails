class PublicClientProductSalesController < ApplicationController
    # POST /public_client_product_sales
    def create
        @product_sale = PublicClientProductSale.new(product_sale_params)

        if @product_sale.save
        render json: @product_sale, except: [:sale_total], status: :created
        else
        render json: { errors: @product_sale.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def product_sale_params
        params.require(:public_client_product_sale).permit(:quantity, :user_id, :public_client_product_id)
    end
end
