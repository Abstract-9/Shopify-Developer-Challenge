class AddAllReferenceLinks < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :shop, foreign_key: true
    add_reference :orders, :shop, foreign_key: true
  end
end
