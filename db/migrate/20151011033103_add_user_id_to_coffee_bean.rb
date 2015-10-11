class AddUserIdToCoffeeBean < ActiveRecord::Migration
  def change
    add_column :coffee_beans, :user_id, :integer
  end
end
