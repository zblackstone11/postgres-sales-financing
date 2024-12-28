-- Insert payments to test the trigger
INSERT INTO Payments (contract_id, payment_date, payment_amount)
VALUES 
    (1, '2024-02-01', 583.33),
    (1, '2024-03-01', 583.33),
    (1, '2024-04-01', 583.34); -- Final payment

-- Query the Contracts table to verify the paid_in_full column
SELECT * FROM Contracts;