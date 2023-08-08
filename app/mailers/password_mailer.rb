class PasswordMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.password_mailer.reset.subject
  #
  def reset
    @token = params[:user].signed_id(purpose: "password_reset", expires_in: 19.minutes)
    mail to: params[:user].email
  end

  # def reset(user)
  #   @token = user.signed_id(purpose: "password_reset", expires_in: 19.minutes)
  #   @user = user
  #   mail(to: user.email, subject: 'Reset Your Password')
  # end
end
