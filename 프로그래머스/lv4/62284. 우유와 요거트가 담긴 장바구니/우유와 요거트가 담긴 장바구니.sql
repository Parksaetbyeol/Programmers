SELECT cart_id
FROM cart_products 
WHERE name = 'Milk'
    AND
        cart_id IN (SELECT cart_id FROM cart_products WHERE name = 'Yogurt')
ORDER BY cart_id

# 2
# SELECT DISTINCT(A.cart_id)
# FROM
#     (SELECT cart_id, name FROM cart_products
#       WHERE name = 'Yogurt') A
# INNER JOIN
#     (SELECT cart_id, name FROM cart_products
#       WHERE name = 'Milk') B 
#    ON A.cart_id = B.cart_id
# ORDER BY 1;

# 3 셀프조인
# SELECT distinct A.CART_ID
# FROM CART_PRODUCTS A, CART_PRODUCTS B
# WHERE A.CART_ID = B.CART_ID 
#   AND A.NAME = "Milk" and B.NAME = "Yogurt" 
# ORDER BY A.CART_ID