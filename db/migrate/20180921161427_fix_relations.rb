class FixRelations < ActiveRecord::Migration[5.2]
  def change
    change_table :products do |t|
      t.remove :shop_id
      t.belongs_to :shop
    end
    change_table :orders do |t|
      t.remove :shop_id
      t.belongs_to :shop
    end
    change_table :line_items do |t|
      t.remove :product_id
      t.belongs_to :product
    end
  end
end
