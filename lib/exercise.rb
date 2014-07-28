require "./lib/connection"
require "./lib/customer"
require "./lib/item"
require "./lib/orderitem"
require "./lib/order"

p Order.group(:customer_id).sum(:amount).to_f
