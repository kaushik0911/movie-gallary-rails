class Api::MoviesController < ApplicationController
  def index
    movies = Movie.select(:id, :title, :synopsis).each do |movie|
      movie[:synopsis] = movie.synopsis.truncate(50)
    end

    render json: {
      data: movies
    }, status: :ok
  end
end
