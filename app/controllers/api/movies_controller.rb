class Api::MoviesController < ApplicationController
  def index
    movies = Array.new
    Movie.select(:id, :title, :synopsis).each do |movie|
      movies.append({
        id: movie.id,
        title: movie.title,
        synopsis: movie.synopsis,
        poster: helpers.original_image(movie.poster)
      })
    end

    render json: {
      data: movies
    }, status: :ok
  end

  def search
    movies = Array.new
    Movie.where("lower(title) LIKE ?", "%#{params[:title].downcase}%")
    .select(:id, :title, :synopsis).each do |movie|
      movies.append({
        id: movie.id,
        title: movie.title,
        synopsis: movie.synopsis,
        poster: helpers.original_image(movie.poster)
      })
    end

    render json: {
      data: movies
    }, status: :ok
  end
end
