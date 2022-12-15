-- 코드를 입력하세요
SELECT CATEGORY, SUM(sales) TOTAL_SALES
FROM book B JOIN book_sales BS ON B.book_id = BS.book_id
WHERE YEAR(BS.saleS_date) = '2022' AND MONTH(BS.saleS_date) = '01'
GROUP BY B.category
ORDER BY B.category 