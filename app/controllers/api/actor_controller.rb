class Api::ActorController < ApplicationController
  def actor_single_action
    input = params[:param]
    @actor = Actor.first
    render "actor.param.json.jb"
  end

  def actor_puts_action
  end
end
