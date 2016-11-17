Get all customers and their addresses.

SELECT *
FROM customers, addresses;

Get all orders and their line items.

SELECT *
FROM orders, line_items;

Which warehouses have cheetos?

SELECT *
FROM products
JOIN warehouse_product
ON warehouse_product.product_id = products.id
JOIN warehouse
ON warehouse.id = warehouse_product.warehouse_id
WHERE description = 'cheetos';

Which warehouses have diet pepsi?

SELECT *
FROM products
JOIN warehouse_product
ON warehouse_product.product_id = products.id
JOIN warehouse
ON warehouse.id = warehouse_product.warehouse_id
WHERE description = 'diet pepsi';

Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.

SELECT *
FROM orders
JOIN addresses
ON addresses.customer_id = orders.id
JOIN customers
ON customers.id = addresses.customer_id
GROUP BY customers.id, orders.id, addresses.id;

How many customers do we have?

SELECT COUNT(id)
FROM customers;

How many products do we carry?

SELECT COUNT(id)
FROM products;

What is the total available on-hand quantity of diet pepsi?

SELECT SUM(on_hand)
FROM warehouse_product
JOIN products
ON products.id = warehouse_product.product_id
WHERE description = 'diet pepsi';
