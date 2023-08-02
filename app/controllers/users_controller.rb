class UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /profile
  def profile
    render json: { user: current_user.attributes, jwt: @token }, status: :accepted
  end  

  # GET /users
  def index
    @users = User.all
    render json: @users, except: [:password_digest]
  end
  
  # GET /users/:id
  def show
    render json: @user, except: [:password_digest]
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      @token = encode_token(user_id: @user.id)
      render json: { user: @user, jwt: @token }, status: :created
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/:id
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # DELETE /users/:id
  def destroy
    @user.destroy
    head :no_content
  end

  private

  def set_user
    @user = User.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render json: { error: 'User not found' }, status: :not_found
  end

  def user_params
    params.require(:user).permit(:name, :status, :email, :phone_number, :group_number, :location, :password, :password_confirmation)
  end
end
