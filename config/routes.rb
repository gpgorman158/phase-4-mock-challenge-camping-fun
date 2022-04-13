Rails.application.routes.draw do
  #campers
  get "/campers", to: "campers#index"
  get "/campers/:id", to: "campers#show"
  post "/campers", to: "campers#create"

  #activities
  get "/activities", to: "activities#index"
  delete "/activities/:id", to: "activities#destroy"

  #signups
  post "/signups", to: "signups#create"

  #resources :signups, only: [:create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
