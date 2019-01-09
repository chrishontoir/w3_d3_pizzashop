require("pry")
require_relative("../models/pizza_order")
require_relative("../models/customer")

PizzaOrder.delete_all()
Customer.delete_all()

customer1 = Customer.new({'name' => 'John Smith'})
customer1.save()

customer2 = Customer.new({'name' => 'Bob'})
customer2.save()

customer2.name = "Bill"

order1 = PizzaOrder.new(
  {
    'customer_id' => customer1.id,
    'topping' => 'pepperoni',
    'quantity' => 2
  }
)

order2 = PizzaOrder.new(
  {
    'customer_id' => customer1.id,
    'topping' => 'Cheese',
    'quantity' => 3
  }
)

order1.save()
order2.save()




binding.pry
nil
