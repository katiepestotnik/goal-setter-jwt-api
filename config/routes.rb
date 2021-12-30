Rails.application.routes.draw do
  resources :updates
  resources :goals
  resources :users, only: [:create]
  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"
end
