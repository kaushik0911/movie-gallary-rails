class Api::UsersController < ApplicationController
  def create
    begin
      user = User.new(user_params)
      user.save

      render json: {
        name: user.name,
        email: user.email
      },
      status: :created

    rescue ActiveRecord::ActiveRecordError => are

    rescue Exception
      # handle everything else
      raise
    end
  end

  def show
  end

  private

  def user_params
    params.permit(:name, :email, :password)
  end
end
