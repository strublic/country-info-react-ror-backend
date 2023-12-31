Rails.application.routes.draw do
  resources :countries
  resource :users, only: [:create]
  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"
  get "/search", to: "countries#search"
end
