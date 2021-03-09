class Api::ActorController < ApplicationController
  def actor_single_action
    input = params[:param]
    @actor = Actor.first
    render "actor.param.json.jb"
  end

  def index
    @actor = Actor.all.order(age: :desc)
    render "index.json.jb"
  end

  def show
    id_search = params["id"]
    @actor = Actor.find_by(id: id_search)
    render "show.json.jb"
  end

  def create
    @actor = Actor.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:known_for],
    )
    if @actor.save
      render "show.json.jb"
    else
      render json: { errors: @actor.errors.full_messages }, status: 406
    end
  end

  def update
    actor_id = params["id"]
    @actor = Actor.find_by(id: actor_id)

    @actor.first_name = params[:first_name] || @actor.first_name
    @actor.last_name = params[:last_name] || @actor.last_name
    @actor.known_for = params[:known_for] || @actor.known_for
    if @actor.save
      render "show.json.jb"
    else
      render json: { errors: @actor.errors.full_messages }, status: 406
    end
  end

  def destroy
    actor_id = params["id"]
    @actor = Actor.find_by(id: actor_id)
    @actor.destroy
    render json: { message: "bye bye actor" }
  end
end
