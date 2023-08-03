class AuthController < ApplicationController
  wrap_parameters :user, include: [:email, :password]
    skip_before_action :authorized, only: [:create]

    def create
        @user = User.find_by(email: user_login_params[:email])
        if @user && @user.authenticate(user_login_params[:password])
          token = encode_token({ user_id: @user.id })
          render json: { user: @user, jwt: token }, status: :accepted
        else
          render json: { message: 'Invalid email or password' }, status: :unauthorized
        end
    end

    def destroy
      render json: { message: 'Logged out successfully' }
    end

    private

    def user_login_params
        params.require(:user).permit(:email, :password)
    end
end