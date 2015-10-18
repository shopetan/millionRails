class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :orderId
      t.integer :orderDataTime
      t.string :orderUserId
      t.string :orderItemId
      t.integer :orderQuantity
      t.string :orderState
      t.string :orderTags

      t.timestamps null: false
    end
  end
end
