class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :orderID
      t.integer :orderDataTime
      t.string :orderUserID
      t.string :orderItemID
      t.integer :orderQuantity
      t.string :orderState
      t.string :orderTags

      t.timestamps null: false
    end
  end
end
