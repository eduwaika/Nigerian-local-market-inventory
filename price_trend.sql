SELECT 
    p.product_name,
    i.unit_price,
    i.date_recorded
FROM inventory i
JOIN products p ON i.product_id = p.product_id
WHERE p.product_name = 'Garri'
ORDER BY i.date_recorded;
