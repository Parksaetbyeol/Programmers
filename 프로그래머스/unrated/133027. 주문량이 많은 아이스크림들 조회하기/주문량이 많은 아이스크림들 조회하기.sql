-- 코드를 입력하세요
SELECT F.FLAVOR
FROM first_half F RIGHT JOIN july J ON F.flavor = J.flavor -- july테이블이 더 큼
GROUP BY F.flavor
ORDER BY (SUM(F.total_order) + SUM(J.total_order)) DESC
LIMIT 3

# SELECT A.FLAVOR
# FROM FIRST_HALF A INNER JOIN (SELECT FLAVOR, SUM(TOTAL_ORDER) AS TOTAL_ORDER 
#                               FROM JULY 
#                               GROUP BY FLAVOR) B
#     ON A.FLAVOR = B.FLAVOR
# ORDER BY (A.TOTAL_ORDER + B.TOTAL_ORDER) DESC
# LIMIT 3