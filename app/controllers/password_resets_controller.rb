class PasswordResetsController < ApplicationController
    skip_before_action :authorized
    def new
        
    end

    def create
        @user = User.find_by(email: params[:email])

        if user.present?
           PasswordMailer.with(user: @user).reset.deliver_later
        end

        redirect_to_root_path, notice: "If an account with that email was found, we have sent an email link to reset your password"      
    end
end
