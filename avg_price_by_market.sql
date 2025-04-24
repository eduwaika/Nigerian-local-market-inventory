SELECT 
    m.market_name,
    p.product_name,
    ROUND(AVG(i.unit_price), 2) AS avg_price
FROM inventory i
JOIN vendors v ON i.vendor_id = v.vendor_id
JOIN markets m ON v.market_id = m.market_id
JOIN products p ON i.product_id = p.product_id
GROUP BY m.market_name, p.product_name
ORDER BY m.market_name, avg_price DESC;
