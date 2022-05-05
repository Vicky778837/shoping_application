class AddToLineItems < ActiveRecord::Migration[7.0]
  def change
    add_column  :line_items,:user_id,:integer
    add_column  :line_items,:price,:float
    add_column  :line_items,:deception,:string


  end
end
