Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'recipes#index', via: [:get, :post]
  resources :recipes, only: [:show] do
    collection do
      get 'my_recipes', to: 'recipes#my_recipes'
    end
  end
  
  resources :users, only: [:show, :edit, :update, :destroy] do
    resources :recipes, only: [:new, :edit, :create, :update, :destroy] do 
      resource :favourite, only: [:create, :destroy] # This sets up the route for creating and destroying a favourite within a recipe.
    end 
    get 'favourites', on: :member # Route to see all favorites for a specific user
  end

  get 'register', to: 'registrations#new'
  post 'register', to: 'registrations#create'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

end
