package data

const (
	selectMainOrderInfo = `orders.id, customers.name AS customer_name, customers.surname,
		products.name AS product_name, customers.contact, date, price`
	joinCustomers = `JOIN customers ON customers.id = customer_id`
	joinProducts  = `JOIN products ON products.id = product_id`
)
