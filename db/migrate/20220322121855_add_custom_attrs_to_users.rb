class AddCustomAttrsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :fname, :string
    add_column :users, :lname, :string
    add_column :users, :phone, :floate
    add_column :users, :address,:string
    add_column :users, :dob, :datetime
  end
end
