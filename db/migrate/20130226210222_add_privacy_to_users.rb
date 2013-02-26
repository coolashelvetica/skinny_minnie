class AddPrivacyToUsers < ActiveRecord::Migration
  def change
    add_column :users, :profile_private, :bool
  end
end
