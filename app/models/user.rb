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
  #self = class method, not instance(more for specific details of certain object)
  def self.create_users(name, email, password, username)
    user = User.create(name: name, email: email, password: password, username: username)
  end

  #retrieve all users
  def self.all_users
    User.all
  end

  #retrieve user by id
  def self.user_id
    user = User.find(id)
  end

  #retrieve by name
  def self.user_by_name(name)
    users_named_jane = User.where(name: name)
  end

  #update users email
  def self.update_email(email)
    user = User.find(id)
    user.update(email: email)
  end

  #delete user
  def self.delete_user
    user = User.find(id)
    user.destroy
  end

  #order users by name ASC
  def self.order_asc
    users_ordered_by_name = User.order(name: :asc)
  end

   #order users by name DESC
  def self.order_desc
    users_ordered_by_name = User.order(name: :desc)
  end

  #count total number of users
  def self.total_users
    user_count = User.count
  end

end
