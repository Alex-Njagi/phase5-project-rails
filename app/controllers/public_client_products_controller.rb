class PublicClientProductsController < ApplicationController
    before_action :set_public_client_product, only: [:show]
    skip_before_action :authorized

  # GET /public_client_products
  def index
    @public_client_products = PublicClientProduct.all
    render json: @public_client_products, except: [:created_at, :updated_at]
  end
  
  # GET /public_client_products/:id
  def show
    render json: @public_client_product, except: [:created_at, :updated_at]
  end

  private

  def set_public_client_product
    @public_client_product = PublicClientProduct.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render json: { error: 'Public client product not found' }, status: :not_found
  end

end
