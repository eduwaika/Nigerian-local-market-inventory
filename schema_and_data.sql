CREATE DATABASE IF NOT EXISTS local_market_tracker;
USE local_market_tracker;

CREATE TABLE markets (
    market_id INT AUTO_INCREMENT PRIMARY KEY,
    market_name VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(50)
);

CREATE TABLE vendors (
    vendor_id INT AUTO_INCREMENT PRIMARY KEY,
    vendor_name VARCHAR(100),
    market_id INT,
    FOREIGN KEY (market_id) REFERENCES markets(market_id)
);

CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100)
);

CREATE TABLE inventory (
    inventory_id INT AUTO_INCREMENT PRIMARY KEY,
    vendor_id INT,
    product_id INT,
    quantity_available INT,
    unit_price DECIMAL(10,2),
    date_recorded DATE,
    FOREIGN KEY (vendor_id) REFERENCES vendors(vendor_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO markets (market_name, city, state) VALUES
('Ogbete Market', 'Enugu', 'Enugu'),
('Wuse Market', 'Abuja', 'FCT'),
('Bodija Market', 'Ibadan', 'Oyo'),
('Ariaria Market', 'Aba', 'Abia');

INSERT INTO vendors (vendor_name, market_id) VALUES
('Mama Nkechi Stores', 1),
('Chinedu Provisions', 1),
('Hajia Salamatu Ventures', 2),
('Baba Tunde Fresh Foods', 3),
('Ngozi’s Mini Mart', 4);

INSERT INTO products (product_name) VALUES
('Garri'), ('Rice'), ('Beans'), ('Palm Oil'), ('Tomatoes');

INSERT INTO inventory (vendor_id, product_id, quantity_available, unit_price, date_recorded) VALUES
(1, 1, 80, 1200.00, '2025-04-20'),
(1, 2, 40, 3400.00, '2025-04-20'),
(2, 1, 65, 1180.00, '2025-04-21'),
(3, 3, 90, 1300.00, '2025-04-22'),
(4, 4, 50, 850.00, '2025-04-22'),
(5, 5, 30, 700.00, '2025-04-23'),
(1, 5, 20, 750.00, '2025-04-23'),
(2, 3, 55, 1350.00, '2025-04-24'),
(3, 2, 70, 3450.00, '2025-04-24');
