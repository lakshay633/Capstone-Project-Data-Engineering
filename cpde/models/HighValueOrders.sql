SELECT 
    c.customerId, 
    c.firstName || ' ' || c.lastName AS customerName, 
    o.orderId, 
    p.productName, 
    p.sellPrice
FROM {{ ref('show_o') }} o
JOIN {{ ref('show_c') }} c ON o.customerId = c.customerId
JOIN {{ ref('show_p') }} p ON o.productId = p.productId
WHERE p.sellPrice > 100
