Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/actor_single_path" => "actor#actor_single_action"
    get "/actor_single_path/:param" => "actor#actor_single_action"
    get "action_puts_path" => "actor#actor_puts_action"
  end
end
