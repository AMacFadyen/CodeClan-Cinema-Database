require_relative('../models/customer.rb')
require_relative('../models/ticket.rb')
require_relative('../models/film.rb')

require('pry-byebug')

Ticket.delete_all()
Film.delete_all()
Customer.delete_all()

customer1 = Customer.new({'name' => 'Gary Franco', 'funds' => 35})
customer2 = Customer.new({'name' => 'Scary Terry', 'funds' => 23})
customer3 = Customer.new({'name' => 'Micheal Scott', 'funds' => 42})
customer4 = Customer.new({'name' => 'Marlo Buckleferry', 'funds' => 14})
customer5 = Customer.new({'name' => 'Sandy Garland', 'funds' => 28})
customer6 = Customer.new({'name' => 'Simon Thompson', 'funds' => 39})
customer7 = Customer.new({'name' => 'Malcom Torland', 'funds' => 32})
customer8 = Customer.new({'name' => 'Peter Piper', 'funds' => 64})

customer1.save()
customer2.save()
customer3.save()
customer4.save()
customer5.save()
customer6.save()
customer7.save()
customer8.save()

film1 = Film.new({'title' => 'The Great Escape', 'price' => 12})
film2 = Film.new({'title' => 'The Incredibles', 'price' => 8})
film3 = Film.new({'title' => 'Justice League Premier', 'price' => 20})
film4 = Film.new({'title' => 'Gladiator', 'price' => 12})
film5 = Film.new({'title' => 'Tron: Legacy in 3D', 'price' => 15})

film1.save()
film2.save()
film3.save()
film4.save()
film5.save()

#Buying tickets should decrease the customer fund by the film cost
# if customer1.funds >= film1.price
#     return customer1.funds -= film1.price
# else
#     return "Customer couldn't afford film price"
# end
#
#
#
#

customer1.buy_ticket(film1)
ticket1 = Ticket.new({'customer_id' => 1, 'film_id' => 1})
ticket1.save()

customer1.buy_ticket(film3)
ticket2 = Ticket.new({'customer_id' => 1, 'film_id' => 3})
ticket2.save()

customer2.buy_ticket(film1)
ticket3 = Ticket.new({'customer_id' => 2, 'film_id' => 1})
ticket3.save()

customer2.buy_ticket(film2)
ticket4 = Ticket.new({'customer_id' => 2, 'film_id' => 2})
ticket4.save()

customer3.buy_ticket(film3)
ticket5 = Ticket.new({'customer_id' => 3, 'film_id' => 3})
ticket5.save()

customer3.buy_ticket(film4)
ticket6 = Ticket.new({'customer_id' => 3, 'film_id' => 4})
ticket6.save()

customer4.buy_ticket(film4)
ticket7 = Ticket.new({'customer_id' => 4, 'film_id' => 4})
ticket7.save()

customer5.buy_ticket(film4)
ticket8 = Ticket.new({'customer_id' => 5, 'film_id' => 4})
ticket8.save()

customer5.buy_ticket(film2)
ticket9 = Ticket.new({'customer_id' => 5, 'film_id' => 2})
ticket9.save()

customer6.buy_ticket(film3)
ticket10 = Ticket.new({'customer_id' => 6, 'film_id' => 3})
ticket10.save()

customer6.buy_ticket(film5)
ticket11 = Ticket.new({'customer_id' => 6, 'film_id' => 5})
ticket11.save()

customer7.buy_ticket(film1)
ticket12 = Ticket.new({'customer_id' => 7, 'film_id' => 1})
ticket12.save()

customer7.buy_ticket(film5)
ticket13 = Ticket.new({'customer_id' => 7, 'film_id' => 5})
ticket13.save()

customer8.buy_ticket(film3)
ticket14 = Ticket.new({'customer_id' => 8, 'film_id' => 3})
ticket14.save()

customer8.buy_ticket(film5)
ticket15 = Ticket.new({'customer_id' => 8, 'film_id' => 5})
ticket15.save()

customer8.buy_ticket(film4)
ticket16 = Ticket.new({'customer_id' => 8, 'film_id' => 4})
ticket16.save()

customer8.buy_ticket(film2)
ticket17 = Ticket.new({'customer_id' => 8, 'film_id' => 2})
ticket17.save()

binding.pry
nil
