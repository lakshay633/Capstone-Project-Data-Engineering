SELECT
    productId,
    productName,
    costPrice,
    sellPrice,
    mrp,
    {{ profit('sellPrice', 'costPrice') }} AS profit,
    {{ discount_percentage('mrp', 'sellPrice') }} AS discount_percentage
FROM {{ ref('show_p') }}
