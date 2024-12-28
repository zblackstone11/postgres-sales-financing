CREATE TABLE Customers_new (
    customer_id SERIAL PRIMARY KEY,
    account_number VARCHAR(10) NOT NULL UNIQUE, -- Ensures unique account numbers
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    address TEXT NOT NULL,
    city VARCHAR(100),
    state VARCHAR(50),
    zip_code VARCHAR(20),
    phone_number VARCHAR(15) NULL
);