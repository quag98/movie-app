class Api::MovieController < ApplicationController
  def index
    @movie = Movie.all.where(english: true)
    render "index.json.jb"
  end

  def show
    id_search = params["id"]
    @movie = Movie.find_by(id: id_search)
    render "show.json.jb"
  end

  def create
    @movie = Movie.new(
      title: params[:title],
      year: params[:year,
      plot: params[:plot],
    )
    if @movie.save
      render "show.json.jb"
    else
      render json: { errors: @movie.errors.full_messages }, status: 406
    end
  end

  def update
    movie_id = params["id"]
    @movie = Movie.find_by(id: movie_id)

    @movie.title = params[:title] || @movie.title
    @movie.year = params[:year] || @movie.year
    @movie.plot = params[:plot] || @movie.plot
    if @movie.save
      render "show.json.jb"
    else
      render json: { errors: @movie.errors.full_messages }, status: 406
    end
  end
end
