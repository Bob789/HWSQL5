-- Automatically calculate column values
-- It means 'GENERATED ALWAYS AS (price * 0.2) STORED' calculates automatically.
CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    price NUMERIC,
    tax NUMERIC GENERATED ALWAYS AS (price * 0.2) STORED
);

INSERT INTO products (price) VALUES (100), (200);

-- Tax is automatically calculated
SELECT * FROM products;
