require "./lib/connection"
require "./lib/customer"
require "./lib/item"
require "./lib/orderitem"
require "./lib/order"


Order.select("*").joins(orderitems: :item).where("orders.customer_id" => 2).each do |thing|
  p thing[:name]
  p thing[:customer_id]
end