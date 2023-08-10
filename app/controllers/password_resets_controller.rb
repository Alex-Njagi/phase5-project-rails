class PasswordResetsController < ApplicationController
    skip_before_action :authorized, only: [:create, :edit, :update]
    # wrap_parameters :user, include: [:password, :password_confirmation]
    def new
        
    end

    def create
        @user = User.find_by(email: params[:email])

        if @user.present?
            PasswordMailer.with(user: @user).reset.deliver_later
        end
        redirect_to root_path, notice: "If an account with this email is found, we have sent an email link."
    end

    def edit
        @user = User.find_signed(params[:token], purpose: "password_reset")
    end

    def update
      pp params
        @user = User.find_signed(params[:token], purpose: "password_reset")
        if @user && @user.update(password_params)
          render json: @user, status: :ok
        else
          render json: { error: "Password update failed." }, status: :unprocessable_entity
        end
      end      

    private

    def password_params
        params.permit(:password, :password_confirmation)
    end
end
