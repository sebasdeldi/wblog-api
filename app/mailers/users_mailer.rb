class UsersMailer < ApplicationMailer
  def registration_greeting(user_id)
    @user = User.find user_id
    mail to: @user.email
    mail subject: 'Welcome to our blog!'
  end
end
