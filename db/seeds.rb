# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

File.foreach('vendor/user/user.tsv') do |line|
  next if $. == 0
  line = line.chomp
  
  items = line.split("\t")
  
  User.create({ :userID => items[0],
                :userCompany => items[1],
                :userDiscountRate => items[2]})
end
print("user okay")

File.foreach('vendor/item/item.tsv') do |line|
  next if $. == 0
  line = line.chomp
  
  items = line.split("\t")
  
  Item.create({ :itemID => items[0],
                :itemSupplier => items[1],
                :itemStockQuantity => items[2],
                :itemBasePrice => items[3],
                :itemTags => items[4]})
end
print("item okay")

File.foreach('vendor/order/order.tsv') do |line|
  next if $. == 0
  line = line.chomp
  
  items = line.split("\t")
  
  Order.create({ :orderID => items[0],
                 :orderDataTime => items[1],
                 :orderUserID => items[2],
                 :orderItemID => items[3],
                 :orderQuantity => items[4],
                 :orderState => items[5],
                 :orderTags => items[6]})
end
print("order okay")
