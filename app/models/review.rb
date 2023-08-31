class Review < ApplicationRecord
  #VALIDATIONS

  belongs_to :user
  belongs_to :recipe
  validates :user_id, presence: true, numericality: { only_integer: true }
  validates :recipe_id, presence: true, numericality: { only_integer: true }
  validates :comments, presence: true, length: { maximum: 1000 }
  validates :rating, presence: true, numericality: { only_integer: true }

  validate :user_exists
  validate :recipe_exists

  #QUERIES

  #create a review
  def self.create_review(user_id, recipe_id,comment, rating)
    review = Review.create(user_id: user_id, recipe_id: recipe_id, comment: comment, rating: rating)
  end

  #get all reviews
  def self.retrieve_all_reviews
    reviews = Review.all
  end

  #get all reviews for specific recipe
  def self.retrieve_all_reviews_for_recipe(recipe_id)
    reviews = Review.where(recipe_id: recipe_id)
  end

  #get avg rating for specific recipe
  def self.retrieve_avg_rating(recipe_id)
    average_rating = Review.where(recipe_id: recipe_id).average(:rating)
  end

  #get total review count for recipe
  def self.retrieve_total_reviews(recipe_id)
    total_reviews_count = Review.where(recipe_id: recipe_id).count
  end

end
