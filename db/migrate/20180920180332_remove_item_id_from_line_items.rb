class RemoveItemIdFromLineItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :line_items, :itemId, :string
  end
end
