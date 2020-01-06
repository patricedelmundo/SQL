-- 2 step process
SELECT id FROM customers WHERE last_name='George';
SELECT * FROM orders WHERE customer_id = 1;

-- 1 step process using a subquery to obtain orders from  a customer with last name 'George'
SELECT * FROM orders WHERE customer_id =
    (
        SELECT id FROM customers
        WHERE last_name='George'
    );

-- takes every customer and conjoining it with every order
SELECT * FROM customers, orders;