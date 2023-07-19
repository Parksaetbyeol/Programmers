# SELECT R.rest_id, I.rest_name, I.food_type, I.favorites, I.address
#     , ROUND(AVG(R.review_score),2) AS SCORE
# FROM rest_info I RIGHT JOIN rest_review R ON I.rest_id = R.rest_id
# GROUP BY R.rest_id
# HAVING I.address LIKE '서울%'
# ORDER BY SCORE DESC, I.favorites DESC

# 서브쿼리
SELECT R.REST_ID, I.REST_NAME, I.FOOD_TYPE, I.FAVORITES, I.ADDRESS
    , ROUND(R.SCORE_AVG, 2) SCORE
FROM REST_INFO I INNER JOIN (SELECT REST_ID, COUNT(REVIEW_ID)
                                ,SUM(REVIEW_SCORE)
                                ,SUM(REVIEW_SCORE)/COUNT(REVIEW_ID) SCORE_AVG
                            FROM REST_REVIEW
                            GROUP BY REST_ID) R
    ON R.REST_ID = I.REST_ID
WHERE I.ADDRESS LIKE '서울%'
ORDER BY SCORE DESC, FAVORITES DESC