CREATE TABLE Vendors (
    vendor_id SERIAL PRIMARY KEY,
    vendor_name VARCHAR(100) NOT NULL UNIQUE -- Ensures vendor names are unique
);