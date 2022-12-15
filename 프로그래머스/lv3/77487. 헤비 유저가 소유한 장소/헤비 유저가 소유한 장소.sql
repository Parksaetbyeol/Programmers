-- 코드를 입력하세요
# WITH host_cnt AS (SELECT COUNT(host_id) cnt
#                  FROM places
#                  GROUP BY host_id
#                  HAVING COUNT(host_id) > 1)

SELECT id, name, host_id
FROM PLACES
WHERE host_id IN (SELECT host_id FROM places 
                  GROUP BY host_id HAVING COUNT(host_id) > 1)
ORDER BY ID