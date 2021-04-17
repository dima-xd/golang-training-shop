package data

const selectMainOrderInfo = `orders.id, customers.name AS customer_name, customers.surname, 
	products.name AS product_name, customers.contact, date, price`
const joinCustomers = `JOIN customers ON customers.id = customer_id`
const joinProducts = `JOIN products ON products.id = product_id`
const selectFromProducts = `SELECT * FROM "products"`
const selectFromProductsWithID = `SELECT * FROM "products" WHERE "id" = $1`
const insertProduct = `INSERT INTO "products" ("name","product_category_id","quantity","unit_price","id") VALUES ($1,$2,$3,$4,$5) RETURNING "id"`
const updateProduct = `UPDATE "products" SET "unit_price"=$1 WHERE "id" = $2`
