class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :userID
      t.string :userCompany
      t.integer :userDiscountRate

      t.timestamps null: false
    end
  end
end
