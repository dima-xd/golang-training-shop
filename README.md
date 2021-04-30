# golang-training-shop

## Description

Application for managing products with such operations as in table below:


|             Path            | Method | Description                           | Body example                                                                                                                                                                                                                     |
|:---------------------------:|--------|---------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| /products                   | GET    | get all products                      |```[{"ID":2,"Name":"Samsung Galaxy Buds","ProductCategoryID":1,"Quantity":8,"UnitPrice":"120,00 ?"},{"ID":3,"Name":"Samsung Electronics EVO Select 256GB MicroSDXC","ProductCategoryID":1,"Quantity":26,"UnitPrice":"30,00 ?"}]```|
| /products                   | POST   | create new product                    |                                                                                                                                                                                                                                  |
| /products/{id}              | GET    | get product by the id                 | ```{"ID":2,"Name":"Samsung Galaxy Buds","ProductCategoryID":1,"Quantity":8,"UnitPrice":"120,00 ?"}```                                                                                                                                  |
| /products/{id}/{unit_price} | PUT    | update product's unit price by the id |                                                                                                                                                                                                                                  |
| /products/{id}              | DELETE | delete product by the id              |                                                                                                                                                                                                                                  |

## How to run server
1.  Server runs on 8081 port. To run it type:
	`go run cmd/main.go`
2.  Open URL
`http://localhost:8081/`

## How to run unit tests
To run unit tests type:
`go test ./...`
