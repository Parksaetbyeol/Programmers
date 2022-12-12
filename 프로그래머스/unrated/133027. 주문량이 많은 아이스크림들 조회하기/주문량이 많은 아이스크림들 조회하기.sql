-- 코드를 입력하세요
SELECT F.FLAVOR
FROM first_half F RIGHT JOIN july J ON F.flavor = J.flavor -- july테이블이 더 큼
GROUP BY F.flavor
ORDER BY (SUM(F.total_order) + SUM(J.total_order)) DESC
LIMIT 3
