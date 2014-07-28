require "./lib/connection"
require "./lib/customer"
require "./lib/item"
require "./lib/orderitem"
require "./lib/order"


p Order.select( :amount, "customers.name", "customer.id").joins(:customer).order("customers.name").group("customers.name").average(:amount)



