package main

import (
	"fmt"
	"log"
	"os"

	"github.com/dimaxdqwerty/golang-training-shop/task_3/pkg/data"
	"github.com/dimaxdqwerty/golang-training-shop/task_3/pkg/db"
)

var (
	host     = os.Getenv("DB_USERS_HOST")
	port     = os.Getenv("DB_USERS_PORT")
	user     = os.Getenv("DB_USERS_USER")
	dbname   = os.Getenv("DB_USERS_DBNAME")
	password = os.Getenv("DB_USERS_PASSWORD")
	sslmode  = os.Getenv("DB_USERS_SSL")
)

func init() {
	if host == "" {
		host = "localhost"
	}
	if port == "" {
		port = "5432"
	}
	if user == "" {
		user = "postgres"
	}
	if dbname == "" {
		dbname = "shop"
	}
	if password == "" {
		password = "postgres"
	}
	if sslmode == "" {
		sslmode = "disable"
	}
}

func main() {
	conn, err := db.GetConnection(host, port, user, dbname, password, sslmode)
	if err != nil {
		log.Fatalf("can't connect to database, error: %v", err)
	}
	orderData := data.NewOrderData(conn)
	orders, err := orderData.ReadAll()
	if err != nil {
		log.Println(err)
	}
	fmt.Println("Ordered products:\n", orders)
	productData := data.NewProductData(conn)
	products, err := productData.ReadAll()
	if err != nil {
		log.Println(err)
	}
	fmt.Println("Products in stock:\n", products)
	product, err := productData.Read(3)
	if err != nil {
		log.Println(err)
	}
	fmt.Println("Product:\n", product)
	p := data.Product{
		Name:              "AMD Ryzen 7 5800X",
		ProductCategoryID: 3,
		Quantity:          13,
		UnitPrice:         "449",
	}
	productID, err := productData.Add(p)
	if err != nil {
		log.Println(err)
	}
	fmt.Println("Inserted product id is:", productID)
	err = productData.Update(6, "455")
	if err != nil {
		log.Println(err)
	}
	err = productData.Delete(9)
	if err != nil {
		log.Println(err)
	}
}
