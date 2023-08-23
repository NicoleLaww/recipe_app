class User < ApplicationRecord
  has_secure_password

  has_many :favourites
  has_many :recipes
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 4 }
  validates :username, presence: true, uniqueness: true
end
