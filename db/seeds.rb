# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'parallel'


File.foreach('vendor/user/user.tsv') do |line|
  next if $. == 0
  line = line.chomp
  
  items = line.split("\t")
  Parallel.each(items, in_threads: 10) {|item1,item2,item3|
    print(item1)
    print(item2)
    print(item3)
    User.create({ :userId => item1,
                  :userCompany => item2,
                  :userDiscountRate => item3})
  }
  
end
print("user okay\n")

File.foreach('vendor/item/item.tsv') do |line|
  next if $. == 0
  line = line.chomp
  
  items = line.split("\t")
  Parallel.each(items, in_threads: 2) {|item|
    Item.create({ :itemId => item[0],
                  :itemSupplier => item[1],
                  :itemStockQuantity => item[2],
                  :itemBasePrice => item[3],
                  :itemTags => item[4]})
  }
end
print("item okay\n")

File.foreach('vendor/order/order.tsv') do |line|
  next if $. == 0
  line = line.chomp
  
  items = line.split("\t")
  
  Parallel.each(items, in_threads: 2) {|item|
    Order.create({ :orderId => item[0],
                   :orderDataTime => item[1],
                   :orderUserId => item[2],
                   :orderItemId => item[3],
                   :orderQuantity => item[4],
                   :orderState => item[5],
                   :orderTags => item[6]})
  }
end
print("order okay\n")
