class User < ActiveRecord::Base
  has_many :recipes
  has_many :coffee_beans
  has_secure_password
end
