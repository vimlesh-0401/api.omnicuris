class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :email
      t.float :total, default: 0.0
      t.integer :items_count, default: 0
      t.timestamps
    end
  end
end
