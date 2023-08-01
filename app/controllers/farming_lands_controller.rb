class FarmingLandsController < ApplicationController
    before_action :set_farming_land, only: [:show, :update, :destroy]
    
    # GET /farming_lands
  def index
    @farming_lands = FarmingLand.all
    render json: @farming_lands
  end

  # POST /farming_lands
  def create
    @farming_land = FarmingLand.new(farming_land_params)

    if @farming_land.save
      render json: @farming_land, status: :created
    else
      render json: { errors: @farming_land.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /farming_lands/:id
  def update
    if @farming_land.update(farming_land_params)
      render json: @farming_land
    else
      render json: { errors: @farming_land.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # DELETE /farming_lands/:id
  def destroy
    @farming_land.destroy
    head :no_content
  end

  private

  def set_farming_land
    @farming_land = FarmingLand.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render json: { error: 'Farming land not found' }, status: :not_found
  end

  def farming_land_params
    params.require(:farming_land).permit(:size_in_acres, :description, :status, :user_id)
  end
end
