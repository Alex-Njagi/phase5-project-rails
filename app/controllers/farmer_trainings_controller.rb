class FarmerTrainingsController < ApplicationController
    before_action :set_farmer_training, only: [:show, :update, :destroy]

  # GET /farmer_trainings/:id
  def show
    render json: @farmer_training
  end

  
end
