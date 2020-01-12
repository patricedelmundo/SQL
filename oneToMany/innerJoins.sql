-- IMPLICIT INNER JOIN (A ∩ B)
-- cross joins them but only for a matching customer id in the orders table and customers table
SELECT * FROM customers, orders 
WHERE customers.id = orders.customer_id; -- 'customers.id' references 'customers' table

-- refining the columns further 
SELECT first_name, last_name, order_date, amount
FROM customers, orders 
    WHERE customers.id = orders.customer_id;

-- EXPLICIT INNER JOIN
-- more conventional
SELECT * FROM customers
JOIN orders
    ON customers.id = orders.customer_id;
    
    
SELECT * FROM orders
JOIN customers
    ON customers.id = orders.customer_id;
   