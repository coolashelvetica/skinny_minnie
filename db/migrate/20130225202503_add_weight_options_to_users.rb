class AddWeightOptionsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :current_weight, :integer
    add_column :users, :goal_weight, :integer
  end
end
