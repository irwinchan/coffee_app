class AddCoffeeBeanIdToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :coffee_bean_id, :integer, index: true
  end
end
