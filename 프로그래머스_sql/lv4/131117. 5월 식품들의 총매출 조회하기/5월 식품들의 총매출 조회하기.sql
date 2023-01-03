-- 코드를 입력하세요
SELECT A.PRODUCT_ID, A.PRODUCT_NAME, SUM(A.price * B.amount) 'TOTAL_SALES'
FROM food_product A INNER JOIN food_order B ON A.product_id = B.product_id
WHERE YEAR(B.produce_date) = '2022' 
    AND MONTH(B.produce_date) = '05'
GROUP BY A.PRODUCT_ID, A.PRODUCT_NAME	
ORDER BY TOTAL_SALES DESC, A.PRODUCT_ID
