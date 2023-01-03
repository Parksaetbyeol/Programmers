-- 코드를 입력하세요
WITH rate AS (SELECT COUNT(DISTINCT user_id) rate_user
                FROM user_info
                WHERE YEAR(joined)=2021)
                
SELECT YEAR(O.sales_date) YEAR, MONTH(O.sales_date) MONTH
    , COUNT(DISTINCT O.user_id) AS PUCHASED_USERS
    , ROUND(COUNT(DISTINCT O.user_id) / (SELECT rate_user
                                        FROM rate), 1) AS PUCHASED_RATIO
FROM user_info U JOIN online_sale O ON U.user_id = O.user_id
WHERE YEAR(U.joined) = 2021
GROUP BY YEAR, MONTH -- 1,2
ORDER BY YEAR, MONTH
