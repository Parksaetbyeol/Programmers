-- 코드를 입력하세요
SELECT F.flavor
FROM FIRST_HALF F 
    JOIN ICECREAM_INFO I 
    ON F.flavor = I.flavor
WHERE F.total_order > 3000 AND I.ingredient_type = 'fruit_based'
ORDER BY F.total_order DESC