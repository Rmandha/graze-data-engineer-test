# Lets create the table into which all the retail sales data will be pushed.

CREATE TABLE IF NOT EXISTS retail_sales (
sale_id INT NOT NULL AUTO INCREMENT,
retailer VARCHAR(50) NOT NULL,
store VARCHAR(50) NOT NULL,
product_id INT,
product_name VARCHAR(255) NOT NULL,
week_commencing Date,
sales_unit INT,
sales_value Decimal(10,2),
PRIMARY KEY(sale_id) )
