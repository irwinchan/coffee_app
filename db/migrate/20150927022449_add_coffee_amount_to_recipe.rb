class AddCoffeeAmountToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :coffee_amount, :integer
  end
end
