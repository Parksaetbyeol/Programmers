SELECT car_id, 
    ROUND(SUM(DATEDIFF(end_date, start_date)+1)/COUNT(car_id)
          ,1) AS AVERAGE_DURATION
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
GROUP BY car_id
HAVING ROUND(SUM(DATEDIFF(end_date,start_date)+1)/count(car_id),1)>=7 #평균 대여기간이 7일 이상
ORDER BY 2 DESC,1 DESC

