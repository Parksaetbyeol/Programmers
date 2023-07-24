SELECT DATE_FORMAT(sales_date,'%Y-%m-%d') SALES_DATE, product_id, user_id, sales_amount
FROM (SELECT * FROM online_sale
     UNION ALL
        SELECT offline_sale_id, NULL AS USER_ID, product_id, sales_amount, sales_date FROM offline_sale) A -- 칼럼 수 맞춰야함
WHERE A.sales_date LIKE '2022-03%'
ORDER BY SALES_DATE, PRODUCT_ID, USER_ID