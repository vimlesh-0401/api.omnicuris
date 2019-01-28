class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.float :quantity
      t.float :price
      t.string :category
      t.timestamps
    end
  end
end
