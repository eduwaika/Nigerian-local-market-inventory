DELIMITER $$

CREATE PROCEDURE AddInventoryRecord (
    IN p_vendor_id INT,
    IN p_product_id INT,
    IN p_quantity INT,
    IN p_unit_price DECIMAL(10,2),
    IN p_date DATE
)
BEGIN
    INSERT INTO inventory (vendor_id, product_id, quantity_available, unit_price, date_recorded)
    VALUES (p_vendor_id, p_product_id, p_quantity, p_unit_price, p_date);
END$$

DELIMITER ;
