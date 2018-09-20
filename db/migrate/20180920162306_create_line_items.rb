class CreateLineItems < ActiveRecord::Migration[5.2]
  def change
    create_table :line_items do |t|
      t.string :name
      t.integer :value
      t.integer :itemId

      t.timestamps
    end
  end
end
