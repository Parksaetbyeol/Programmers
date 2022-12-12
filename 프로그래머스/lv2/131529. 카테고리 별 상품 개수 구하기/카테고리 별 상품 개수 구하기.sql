-- 코드를 입력하세요
SELECT LEFT(product_code,2) AS L, COUNT(*)
FROM product
GROUP BY LEFT(product_code,2)
ORDER BY product_code