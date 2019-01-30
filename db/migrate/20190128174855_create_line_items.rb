class CreateLineItems < ActiveRecord::Migration[5.1]
  def change
    create_table :line_items do |t|
      t.integer :item_id
      t.integer :order_id
      t.string :name
      t.text :description
      t.integer :quantity, default: 0
      t.float :price, default: 0.0
      t.float :total, default: 0.0
      t.string :category, default: 'QTY'
      t.timestamps
    end
  end
end
