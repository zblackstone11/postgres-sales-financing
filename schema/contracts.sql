CREATE TABLE Contracts (
    contract_id SERIAL PRIMARY KEY,
    customer_id INTEGER REFERENCES Customers(customer_id) ON DELETE CASCADE,
    vendor_id INTEGER REFERENCES Vendors(vendor_id) ON DELETE CASCADE,
    reorder_number INTEGER NULL,
    amount_paid_to_vendor NUMERIC(10, 2) NOT NULL,
    contract_cost NUMERIC(10, 2) NOT NULL,
    installments INTEGER NOT NULL,
    first_payment_date DATE NOT NULL,
    monthly_payment NUMERIC(10, 2) NOT NULL,
    paid_in_full BOOLEAN DEFAULT FALSE,
    delivered_date DATE NULL,
    contract_date DATE NOT NULL
);