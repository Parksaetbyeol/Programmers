-- 코드를 입력하세요
SELECT R.rest_id, I.rest_name, I.food_type, I.favorites, I.address, ROUND(AVG(R.review_score),2) AS SCORE
FROM rest_info I RIGHT JOIN rest_review R ON I.rest_id = R.rest_id
GROUP BY R.rest_id
HAVING I.address LIKE '서울%'
ORDER BY SCORE DESC, I.favorites DESC