-- 코드를 입력하세요
SELECT cart_id
FROM cart_products
WHERE name = 'Milk' AND cart_id IN (SELECT cart_id FROM cart_products WHERE name = 'Yogurt')
ORDER BY cart_id

# SELECT A.cart_id 
# FROM
#     (SELECT cart_id, name FROM cart_products
#     WHERE name = 'Yogurt') A
# INNER JOIN
#     (SELECT cart_id, name FROM cart_products
#     WHERE name = 'Milk') B 
#     ON A.cart_id = B.cart_id
# ORDER BY 1;