class LandOperationsController < ApplicationController
  before_action :set_land_operation, only: [:show, :update, :destroy]

  # GET /land_operations
  # def index
  #   @land_operations = LandOperation.all
  #   render json: @land_operations
  # end
  
  # # GET /land_operations/:id
  # def show
  #   render json: @land_operation
  # end

  # POST /land_operations
  def create
    @land_operation = LandOperation.new(land_operation_params)

    if @land_operation.save
      render json: @land_operation, status: :created
    else
      render json: { errors: @land_operation.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /land_operations/:id
  def update
    if @land_operation.update(land_operation_params)
      render json: @land_operation
    else
      render json: { errors: @land_operation.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # DELETE /land_operations/:id
  def destroy
    @land_operation.destroy
    head :no_content
  end

  private

  def set_land_operation
    @land_operation = LandOperation.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render json: { error: 'Land operation not found' }, status: :not_found
  end

  def land_operation_params
    params.require(:land_operation).permit(:operation_duration, :cost_of_operation, :type_of_operation, :user_id, :farming_land_id)
  end
end
