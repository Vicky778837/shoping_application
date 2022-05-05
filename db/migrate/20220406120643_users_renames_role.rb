class UsersRenamesRole < ActiveRecord::Migration[7.0]
  def change
      rename_column :users, :integer, "customers"
  end
end
