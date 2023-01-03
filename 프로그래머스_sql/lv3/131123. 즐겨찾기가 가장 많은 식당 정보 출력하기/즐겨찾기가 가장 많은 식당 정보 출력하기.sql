-- 코드를 입력하세요
SELECT FOOD_TYPE, REST_ID, REST_NAME, FAVORITES
FROM rest_info
WHERE (food_type, favorites) IN (SELECT food_type, MAX(favorites)
                                    FROM rest_info
                                    GROUP BY food_type)
ORDER BY food_type DESC

# 2
# SELECT food_type, rest_id, rest_name, MAX(favorites) 'FAVORITES'
# FROM rest_info
# GROUP BY food_type
# ORDER BY food_type DESC
