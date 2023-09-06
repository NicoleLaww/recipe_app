Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
  # Set the root route to 'recipes#index' for both GET and POST requests
  root to: 'recipes#index', via: [:get, :post]
  
  # Define a resource for recipes with only the show and destroy actions
  resources :recipes, only: [:show, :destroy] do
    # Define a custom route 'my_recipes' that maps to 'recipes#my_recipes'
    collection do
      get 'my_recipes', to: 'recipes#my_recipes'
    end
  end

   # Define a resource for users with only show, edit, update, and destroy actions
  resources :users, only: [:show, :edit, :update, :destroy] do
    resources :recipes, only: [:new, :show, :edit, :create, :update, :destroy] do 
     # Define nested resource reviews with create, update, and destroy actions
      resources :review, only: [:create, :update, :destroy]
      # Define a singular resource favorite with create and destroy actions
      resource :favourite, only: [:create, :destroy] # This sets up the route for creating and destroying a favourite within a recipe.
      end 
      # Define a custom route 'favourites' that maps to 'users#favourites' on a member (user) resource
    get 'favourites', on: :member # Route to see all favorites for a specific user
  end
  
  # Define routes for user registration and login
  get 'register', to: 'registrations#new'
  post 'register', to: 'registrations#create'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

end
