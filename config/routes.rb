Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/actor_single_path" => "actor#actor_single_action"
    get "/actor_single_path/:param" => "actor#actor_single_action"
    get "/action_puts_path" => "actor#actor_puts_action"
    get "/actor" => "actor#index"
    get "/actor/:id" => "actor#show"
    post "/actor" => "actor#create"
    patch "/actor/:id" => "actor#update"
    delete "/actor/:id" => "actor#destroy"
  end
end
