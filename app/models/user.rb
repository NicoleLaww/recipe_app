class User < ApplicationRecord
  #VALIDATIONS

  has_secure_password
  has_many :favourites
  has_many :recipes
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 4 }
  validates :username, presence: true, uniqueness: true

  #QUERIES 

  #create user
  user = User.create(name: "Jane Doe", email: "jannydough@example.com", password: "secure_password", username: "janedoe")
  #retrieve all users
  all_users = User.all
  #retrieve user by id
  user = User.find(id)
  #retrieve by name
  users_named_jane = User.where(name: "Jane")
  #update users email
  user = User.find(id)
  user.update(email: "updatednewemail@example.com")
  #delete user
  user = User.find(id)
  user.destroy
  #order users by name ASC & DESC
  users_ordered_by_name = User.order(name: :asc)
  users_ordered_by_name = User.order(name: :desc)
  #count total number of users
  user_count = User.count

  #QUERIES

  #name
  scope :by_name, ->(name) { where(name: name) }
  #name asc or desc
  scope :ordered_by_name_asc, -> { order(name: :asc) }
  scope :ordered_by_name_desc, -> { order(name: :desc) }
end
