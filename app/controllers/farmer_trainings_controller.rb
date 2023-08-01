class FarmerTrainingsController < ApplicationController
    before_action :set_farmer_training, only: [:show, :update, :destroy]

  # GET /farmer_trainings/:id
  def show
    render json: @farmer_training
  end

  # POST /farmer_trainings
  def create
    @farmer_training = FarmerTraining.new(farmer_training_params)

    if @farmer_training.save
      render json: @farmer_training, status: :created
    else
      render json: { errors: @farmer_training.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
