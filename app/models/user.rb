class User < ApplicationRecord
  has_secure_password

  has_many :favourites
  has_many :recipes
end
