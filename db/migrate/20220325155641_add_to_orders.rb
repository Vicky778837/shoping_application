class AddToOrders < ActiveRecord::Migration[7.0]
  def change
  end
   add_column :line_items, :order_id, :integer
end
