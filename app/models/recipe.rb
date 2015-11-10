class Recipe < ActiveRecord::Base
  belongs_to :user
  belongs_to :coffee_bean

  validates :coffee_bean, presence: true
end
