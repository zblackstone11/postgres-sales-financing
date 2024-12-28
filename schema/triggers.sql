CREATE OR REPLACE FUNCTION update_paid_in_full()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE Contracts
    SET paid_in_full = (
        SELECT CASE
            WHEN COALESCE(SUM(payment_amount), 0) >= contract_cost THEN TRUE
            ELSE FALSE
        END
        FROM Payments
        WHERE contract_id = NEW.contract_id
    )
    WHERE contract_id = NEW.contract_id;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER after_payment_insert
AFTER INSERT OR UPDATE ON Payments
FOR EACH ROW
EXECUTE FUNCTION update_paid_in_full();