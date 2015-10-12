class AddDescriptionShortToCoffeeBean < ActiveRecord::Migration
  def change
    add_column :coffee_beans, :description_short, :string
  end
end
