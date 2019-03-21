class Api::V1::UsersController < ApiController
  #before_action :authenticate_user!

  def index
    render_paginated User.filter(params.slice(:by_email, :by_name)), each_serializer: Api::V1::UserSerializer
  end

  def show
    render json: user
  end

  private

  def user
    @user ||= User.find(params.require(:id))
  end
end
