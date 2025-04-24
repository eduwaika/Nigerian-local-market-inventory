SELECT 
    v.vendor_name,
    p.product_name,
    i.quantity_available,
    i.date_recorded
FROM inventory i
JOIN vendors v ON i.vendor_id = v.vendor_id
JOIN products p ON i.product_id = p.product_id
WHERE i.quantity_available < 40
ORDER BY i.quantity_available ASC;
