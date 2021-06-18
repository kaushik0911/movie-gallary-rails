class Api::UsersController < ApplicationController
  def create
    user = User.new(user_params)
     if user.save
      render json: {
        name: user.name,
        email: user.email,
        message: "User has created been successfully."
      },
      status: :create
    else
      render json: {
        errors: user.errors
      },
      status: :bad_request
    end
  end

  def show
  end

  private

  def user_params
    params.permit(:name, :email, :password)
  end
end
