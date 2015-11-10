class User < ActiveRecord::Base
  has_many :recipes
  has_many :coffee_beans

  validates :email, uniqueness: true
  has_secure_password
end
