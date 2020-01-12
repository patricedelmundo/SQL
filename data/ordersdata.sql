-- regular table with a primary key
CREATE TABLE customers(
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(100)
);

-- references customer id from previous table
CREATE TABLE orders(
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(8,2),
    customer_id INT, -- names the column
    FOREIGN KEY(customer_id) REFERENCES customers(id) -- states that the column 'customer_id' is from the 'customers' table and 'id' colunm
);