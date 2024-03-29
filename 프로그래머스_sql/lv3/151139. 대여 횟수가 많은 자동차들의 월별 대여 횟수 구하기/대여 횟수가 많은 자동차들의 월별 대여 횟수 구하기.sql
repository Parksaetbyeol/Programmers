-- 코드를 입력하세요
SELECT MONTH(start_date) AS MONTH
        , CAR_ID
        , COUNT(*) AS RECORDS
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE (MONTH(start_date) BETWEEN 8 AND 10) 
    AND
    car_id IN (SELECT CAR_ID
                FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
                WHERE MONTH(start_date) BETWEEN 8 AND 10
                GROUP BY CAR_ID
                HAVING COUNT(*) >= 5)
GROUP BY MONTH, CAR_ID
ORDER BY MONTH, CAR_ID DESC
