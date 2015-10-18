class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :itemID
      t.string :itemSupplier
      t.integer :itemStockQuantity
      t.integer :itemBasePrice
      t.string :itemTags

      t.timestamps null: false
    end
  end
end
