class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :street_address
      t.string :city
      t.string :state
      t.string :country
      t.integer :pin_code
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
