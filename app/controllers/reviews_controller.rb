class ReviewsController < ApplicationController
  before_action :require_login, only: [:create, :destroy, :update]
  before_action :require_authorization, only: [:create, :destroy, :update]
  
    def create
      @recipe = Recipe.find(params[:recipe_id])
      @review = @recipe.reviews.new(review_params)
      @review.user = current_user
      if @review.save
        redirect_to @recipe
      else
        flash[:alert] = 'Review and rating did not save properly.'
        render @recipe
      end
    end
  
    def update 
      @recipe = Recipe.find(params[:recipe_id])
      @review = Review.find(params[:id])
  
      if @review.update(review_params)
        redirect_to @recipe
      else
        flash[:alert] = 'Failed to update review.'
        redirect_to @recipe
      end
    end 

    def destroy 
      logger.debug "Hello Review"
      @recipe = Recipe.find(params[:recipe_id])
      @review = @recipe.reviews.find(params[:id])
      
      puts @recipe 
      puts @review
  
      if @review.destroy
        redirect_to @recipe
      else
        flash[:alert] = 'Failed to delete review.'
        redirect_to @recipe
      end
  
    end 
  
    private 
    def review_params
      params.require(:review).permit(:rating, :comment)
    end
  end
