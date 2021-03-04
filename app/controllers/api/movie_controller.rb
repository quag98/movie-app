class Api::MovieController < ApplicationController
  def index
    @movie = Movie.all
    render "index.json.jb"
  end

  def show
    id_search = params["id"]
    @movie = Movie.find_by(id: id_search)
    render "show.json.jb"
  end
end
