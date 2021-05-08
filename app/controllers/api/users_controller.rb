class Api::UsersController < ApplicationController
  def create
    user = User.new(user_params)
    user.save

    render json: {
      name: user.name,
      email: user.email
    }, status: :created
  end

  def show
    
  end

  private

  def user_params
    params.permit(:name, :email, :password)
  end
end
