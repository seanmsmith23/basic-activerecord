require "./lib/connection"
require "./lib/customer"
require "./lib/item"
require "./lib/orderitem"
require "./lib/order"

Item.find_by(name: "kayak01").destroy
p Item.all