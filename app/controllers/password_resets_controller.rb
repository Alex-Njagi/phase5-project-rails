class PasswordResetsController < ApplicationController
    skip_before_action :authorized
    def new
        
    end

    def create
        @user = User.find_by(email: params[:email])

        if user.present?
           PasswordMailer.with(user: @user).reset.deliver_later
        end

        redirect_to "/", notice: "If an account with that email was found, we have sent an email link to reset your password"      
    end

    def edit
        @user = User.find_signed(params[:token], purpose: "password_reset")
    rescue ActiveSupport::MessageVerifier::InvalidSignature
        redirect_to "/login", alert: "Your token has expired please try again."
    end

    def update
        @user = User.find_signed(params[:token], purpose: "password_reset")
        if @user.update(password_params)
            redirect_to "login", notice: "Your password was reset successfully. Please log in"
        end
    end

    private

    def password_params
        params.require(:user).permit(:password, :password_confirmation)
    end
end
