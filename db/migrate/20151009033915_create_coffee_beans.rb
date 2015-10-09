class CreateCoffeeBeans < ActiveRecord::Migration
  def change
    create_table :coffee_beans do |t|
      t.string :brand
      t.string :roast
      t.string :name
      t.string :origin

      t.timestamps null: false
    end
  end
end
