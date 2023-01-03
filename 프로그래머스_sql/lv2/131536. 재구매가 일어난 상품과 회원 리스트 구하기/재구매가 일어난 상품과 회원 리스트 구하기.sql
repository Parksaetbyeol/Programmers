-- 코드를 입력하세요
SELECT user_id, product_id
FROM ONLINE_SALE
GROUP BY user_id, product_id
HAVING COUNT(*) > 1
ORDER BY USER_ID, PRODUCT_ID DESC
