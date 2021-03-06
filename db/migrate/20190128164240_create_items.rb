class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.integer :quantity, default: 0
      t.float :price, default: 0.0
      t.string :category, default: 'QTY'
      t.timestamps
    end
  end
end
