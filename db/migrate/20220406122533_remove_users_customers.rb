class RemoveUsersCustomers < ActiveRecord::Migration[7.0]
  def change
        remove_column :users, :customers

  end
end
