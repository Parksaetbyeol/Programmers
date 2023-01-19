-- 코드를 입력하세요
SELECT car_type, COUNT(car_type) AS CARS
FROM CAR_RENTAL_COMPANY_CAR
WHERE options LIKE '%시트%'
GROUP BY car_type
ORDER BY car_type