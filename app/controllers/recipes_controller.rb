class RecipesController < ApplicationController
  # before_action :find_recipe, only: [:show, :edit, :update, :destroy]

  # Fetch and list all recipes 
  def index 
    @recipes = Recipe.where(filter_params)
  end 
  
  # Fetch and show a specific recipe
  def show 
    @recipe = Recipe.find(params[:id])
  end 

  # Display form for creating a new recipe
  def new 
     if !current_user
      redirect_to login_path, alert: 'Please login!'
    else 
      @recipe = Recipe.new 
    end 
  end 

  # Create a new recipe based on submitted form data 
  def create
    if !current_user
      redirect_to login_path, alert: 'Please login!'
    elsif 
      @recipe = Recipe.new(recipe_params)
      if @recipe.save
        redirect_to @recipe, notice: 'Recipe was successfully created.'
      else 
        render :new
      end
    end 
  end

  # Displays form to edit an existing recipe 
  def edit 
    if !current_user
      redirect_to login_path, alert: 'Please login!'
    else 
    @recipe = Recipe.find(params[:id])
    end 
  end 

  # Update an existing recipe based on submitted form data 
  def update
    if !current_user
      redirect_to login_path, alert: 'Please login!'
    elsif
      @recipe = Recipe.find(params[:id])
      if @recipe.update(recipe_params)
        redirect_to recipe_path(@recipe), notice: 'Recipe was successfully updated.'
      else 
        render :edit
      end
    end 
  end

  # Delete an existing recipe
  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy 
    redirect_to recipes_path, notice: 'Recipe was successfully deleted.'
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
    filtered_params = params.slice(:gluten_free, :vegan, :vegetarian, 
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

