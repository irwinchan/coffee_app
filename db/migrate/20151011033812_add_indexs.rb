class AddIndexs < ActiveRecord::Migration
  def change
    add_index :coffee_beans, :user_id
    add_index :recipes, :coffee_bean_id
  end
end
