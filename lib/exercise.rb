require "./lib/connection"
require "./lib/customer"
require "./lib/item"
require "./lib/orderitem"
require "./lib/order"

p Order.select(:customer_id, :amount).group(:customer_id).maximum(:amount)
