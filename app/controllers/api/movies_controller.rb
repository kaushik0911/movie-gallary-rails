class Api::MoviesController < ApplicationController
  def index
    movies = Movie.select(:id, :title, :synopsis)

    render json: {
      data: movies
    }, status: :ok
  end
end
