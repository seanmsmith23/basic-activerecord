require "./lib/connection"
require "./lib/customer"
require "./lib/item"
require "./lib/orderitem"
require "./lib/order"

item = Item.find_by(description: "snow board")
item.update(name: "Board01")
p item
