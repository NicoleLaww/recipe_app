class User < ApplicationRecord
  has_many :favourites
  has_many :recipes
end
