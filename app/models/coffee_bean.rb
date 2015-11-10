class CoffeeBean < ActiveRecord::Base
  has_many :recipes, dependent: :destroy
  belongs_to :user
  validates :name, :brand, :roast, presence: true
end
