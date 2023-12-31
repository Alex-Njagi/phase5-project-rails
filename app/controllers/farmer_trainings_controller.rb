class FarmerTrainingsController < ApplicationController
    before_action :set_farmer_training, only: [:show, :update, :destroy]

    # GET /farmer_trainings
  # def index
  #   @farmer_trainings = FarmerTraining.all
  #   render json: @farmer_trainings
  # end
  
  # # GET /farmer_trainings/:id
  # def show
  #   render json: @farmer_training
  # end

  # POST /farmer_trainings
  def create
    @farmer_training = FarmerTraining.new(farmer_training_params)

    if @farmer_training.save
      render json: @farmer_training, status: :created
    else
      render json: { errors: @farmer_training.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /farmer_trainings/:id
  # def update
  #   if @farmer_training.update(farmer_training_params)
  #     render json: @farmer_training
  #   else
  #     render json: { errors: @farmer_training.errors.full_messages }, status: :unprocessable_entity
  #   end
  # end

  # # DELETE /farmer_trainings/:id
  # def destroy
  #   @farmer_training.destroy
  #   head :no_content
  # end

  private

  def set_farmer_training
    @farmer_training = FarmerTraining.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render json: { error: 'Farmer training not found' }, status: :not_found
  end

  def farmer_training_params
    params.require(:farmer_training).permit(:number_of_trainees, :training_date, :user_id)
  end

end
