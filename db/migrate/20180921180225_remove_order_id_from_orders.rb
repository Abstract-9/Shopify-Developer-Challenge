class RemoveOrderIdFromOrders < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :orderID, :integer
  end
end
