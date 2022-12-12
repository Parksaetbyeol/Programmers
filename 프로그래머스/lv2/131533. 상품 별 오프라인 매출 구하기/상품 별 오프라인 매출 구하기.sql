-- 코드를 입력하세요
SELECT A.product_code AS 'PRODUCT_CODE', SUM(A.price * B.sales_amount) AS 'SALES'
FROM product A JOIN offline_sale B ON A.product_id = B.product_id
GROUP BY A.product_code
ORDER BY SALES DESC, PRODUCT_CODE