class RecipesController < ApplicationController
    before_action :require_login, only: [:new, :create, :edit, :update, :destroy]
    before_action :require_authorization, only: [:edit, :update, :destroy]

  # Fetch and list all recipes 
  def index 
    if request.post?
      @recipes = Recipe.apply_boolean_filters(filter_params)
    else
      @recipes = Recipe.all
    end
  end 
  
  # Fetch and show a specific recipe
  def show 
    @recipe = Recipe.find(params[:id])
  end 

  # Display form for creating a new recipe
  def new 
    @recipe = Recipe.new 
    render 'users/recipes/new'
  end 

  # Create a new recipe based on submitted form data 
  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to @recipe
    else 
      flash.now[:alert] = 'Something went wrong. Please try again.'
      render :new
    end
  end

  # Displays form to edit an existing recipe 
  def edit 
    @recipe = Recipe.find(params[:id])
    render 'users/recipes/edit'
  end 

  # Update an existing recipe based on submitted form data 
  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(recipe_params)
      redirect_to recipe_path(@recipe)
    else 
      flash.now[:alert] = 'Something went wrong. Please try again.'
      render :edit
    end
  end

  # Delete an existing recipe
  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy 
      redirect_to recipes_path
  end

  # Show users' recipes 
  def my_recipes
    @user = current_user
    @recipes = @user.recipes
  end

  # Specify the only permitted parameters for a recipe, as a security feature
  private 
  def recipe_params
    params.require(:recipe).permit(:title, :gluten_free, :vegan, :vegetarian, 
                                   :breakfast, :kosher, :peanut_free, :halal,
                                   :dinner, :lunch, :dessert, :appetizer,
                                   :photo, :time, :number_of_servings,
                                   :instructions, :country, :description,
                                   :user_id, :ingredients)
  end

  # Filter the parameters based on what boxes are checked by user
  def filter_params
    filtered_params = params[:filter].slice(:gluten_free, :vegan, :vegetarian, 
                                   :breakfast, :kosher, :peanut_free, :halal,
                                   :dinner, :lunch, :dessert, :appetizer)

    transformed_params = {}
    filtered_params.each do |key, value|
      transformed_value = if value == "1"
                            true
                          else
                            false
                          end
      transformed_params[key] = transformed_value
    end
    transformed_params
  end
end

