class PasswordResetsController < ApplicationController
    skip_before_action :authorized
    def new
        
    end

    def create
        @user = User.find_by(email: params[:email])

        if @user.present?
            PasswordMailer.with(user: @user).reset.deliver_later
        end
        redirect_to root_path, notice: "If an account with this email is found, we have sent an email link."
    end
end
