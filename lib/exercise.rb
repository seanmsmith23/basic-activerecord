require "./lib/connection"
require "./lib/customer"
require "./lib/item"
require "./lib/orderitem"
require "./lib/order"

p Order.where(customer_id: 4).sum(:amount).to_f
