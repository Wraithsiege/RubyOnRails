Rails.application.routes.draw do
  resources :school_accessories
  resources :writing_accessories
  resources :musics
  resources :toys
  resources :gift_cards
  resources :congratulations_cards
  resources :books
  resources :movies
  get 'sessions/new'

  root "static_pages#admin"

  get  "/help",    to: "static_pages#help"
  get  "/about",   to: "static_pages#about"
  get  "/contact", to: "static_pages#contact"
  get  "/signup",  to: "users#new"
  get  "/login",   to: "sessions#new"
  post "/login",   to: "sessions#create"

  
  delete "/logout",  to: "sessions#destroy"


  resources :messages
  resources :users
  resources :account_activations, only: [:edit]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
