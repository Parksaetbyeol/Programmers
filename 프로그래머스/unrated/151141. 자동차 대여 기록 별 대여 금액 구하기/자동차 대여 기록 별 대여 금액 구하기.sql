-- 1
# WITH CAR_TABLE AS (
#     SELECT C.car_id CAR_ID, car_type, daily_fee, history_id
#         , DATEDIFF(end_date, start_date)+1 AS PERIOD
#         , CASE WHEN DATEDIFF(end_date, start_date)+1 >= 90 THEN '90일 이상'
#             WHEN DATEDIFF(end_date, start_date)+1 >= 30 THEN '30일 이상'
#             WHEN DATEDIFF(end_date, start_date)+1 >= 7 THEN '7일 이상'
#             END AS DATE
#     FROM CAR_RENTAL_COMPANY_CAR C JOIN CAR_RENTAL_COMPANY_RENTAL_HISTORY H 
#         ON C.car_id = H.car_id
#     WHERE C.car_type = '트럭'
#     )

# SELECT history_id
#     , ROUND((DAILY_FEE * (100 - IFNULL(DISCOUNT_RATE, 0)) /100) * PERIOD) AS FEE
# FROM CAR_TABLE C LEFT JOIN CAR_RENTAL_COMPANY_DISCOUNT_PLAN P
#     ON C.car_type = P.car_type AND C.DATE = P.DURATION_TYPE
# ORDER BY FEE DESC, history_id DESC

-- 2
SELECT HISTORY_ID
        , ROUND(CASE WHEN rental_date < 7 THEN rental_date * daily_fee
                     WHEN rental_date < 30 THEN rental_date * daily_fee * 0.95
                     WHEN rental_date < 90 THEN rental_date * daily_fee * 0.92
                     ELSE rental_date * daily_fee * 0.85 END,0) AS FEE
FROM (
        SELECT history_id, car_id, (DATEDIFF(end_date, start_date)+1) rental_date
        FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
        WHERE car_id in (SELECT car_id 
                            FROM CAR_RENTAL_COMPANY_CAR 
                            WHERE car_type = '트럭')
     ) HIS
LEFT JOIN CAR_RENTAL_COMPANY_CAR USING (CAR_ID)
ORDER BY 2 DESC, 1 DESC