class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :orderID
      t.integer :value

      t.timestamps
    end
  end
end
