class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.integer :coffee_id
      t.integer :grinder_id
      t.integer :coffee_maker_id
      t.text :technique
      t.float :water_vol
      t.float :water_temp

      t.timestamps null: false
    end
  end
end
