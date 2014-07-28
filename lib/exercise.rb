require "./lib/connection"
require "./lib/customer"
require "./lib/item"
require "./lib/orderitem"
require "./lib/order"

Item.create(name: "kayak01", description: "one person river kayak")
p Item.all