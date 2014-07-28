require "./lib/connection"
require "./lib/customer"
require "./lib/item"
require "./lib/orderitem"
require "./lib/order"


Order.select( :amount, "customers.name", "customers.id").joins(:customer).order("customers.name").group("customers.name", "customers.id").average(:amount).each do |array|
  p "AVG ORDER AMOUNT: #{array[1].to_f.round(2)}, NAME: #{array[0][0]}, CUSTOMER ID: #{array[0][1]}"
end

# p Order.select( :amount, "customers.name", "customers.id").joins(:customer).order("customers.name").group("customers.name", "customers.id").average(:amount).first




