require "./lib/connection"
require "./lib/customer"
require "./lib/item"
require "./lib/orderitem"
require "./lib/order"


order = Order.joins(:customer).select( :amount, "customers.name", "orders.id").each do |info|
  p info[:name]
  p info[:amount]
  p info[:id]
end



