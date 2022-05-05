class RenameColaumDescriptionToLineItem < ActiveRecord::Migration[7.0]
  def change
        rename_column :line_items, :deception ,:description

  end
end
