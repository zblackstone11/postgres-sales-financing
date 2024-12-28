CREATE TABLE Payments (
    payment_id SERIAL PRIMARY KEY,
    contract_id INTEGER REFERENCES Contracts(contract_id) ON DELETE CASCADE,
    payment_date DATE NOT NULL,
    payment_amount NUMERIC(10, 2) NOT NULL
);