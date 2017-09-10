Rails.application.routes.draw do
  root 'welcome#index'

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#delete"

  resources :users, only: [:new, :create]
  resources :private_chats, only: [:new, :create, :show]
end
