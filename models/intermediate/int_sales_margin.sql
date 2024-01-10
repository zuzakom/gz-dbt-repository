SELECT 
    products_id, 
    date_date, 
    orders_id,
    revenue, 
    quantity, 
    p.purchase_price AS purchase_price, 
    ROUND(s.quantity*p.purchase_price,2) AS purchase_cost,
    s.revenue - ROUND(s.quantity*p.purchase_price,2) AS margin
FROM {{ref("stg_raw__sales")}} s
LEFT JOIN {{ref("stg_raw__product")}} p 
		USING (products_id)