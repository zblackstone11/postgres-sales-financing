-- Insert test data into Customers
INSERT INTO Customers (account_number, first_name, last_name, address, phone_number)
VALUES ('01-01234', 'John', 'Doe', '123 Elm Street', '5551234');

-- Insert test data into Vendors
INSERT INTO Vendors (vendor_name)
VALUES ('FoodCo');

-- Insert test data into Contracts
INSERT INTO Contracts (customer_id, vendor_id, reorder_number, amount_paid_to_vendor, contract_cost, installments, first_payment_date, monthly_payment, contract_date)
VALUES (1, 1, 101, 5000.00, 1750.00, 3, '2024-01-01', 583.33, '2023-12-15');