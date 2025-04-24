SELECT 
    v.vendor_name,
    p.product_name,
    i.quantity_available,
    i.unit_price,
    i.date_recorded
FROM inventory i
JOIN vendors v ON i.vendor_id = v.vendor_id
JOIN products p ON i.product_id = p.product_id
ORDER BY v.vendor_name, i.date_recorded DESC;
