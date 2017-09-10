Rails.application.routes.draw do
  root 'welcome#index'

  get "/login", to: "sessions#new"
  
  resources :users, only: [:new, :create]
end
