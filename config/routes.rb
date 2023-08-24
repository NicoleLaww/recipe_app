Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :recipes do
    resource :favourite, only: [:create, :destroy] # This sets up the route for creating and destroying a favourite within a recipe.
  end
  
  resources :users

  get 'register', to: 'registrations#new'
  post 'register', to: 'registrations#create'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'favourites', to: 'favourites#index'
  
end
