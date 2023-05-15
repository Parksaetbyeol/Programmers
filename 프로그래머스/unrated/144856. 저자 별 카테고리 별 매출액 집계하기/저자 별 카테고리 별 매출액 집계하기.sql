SELECT A.author_id, A.author_name, B.category,
    SUM(BS.sales * B.price) AS 'TOTAL_SALES'
FROM book B JOIN author A ON B.author_id = A.author_id
    JOIN book_sales BS ON B.book_id = BS.book_id
WHERE sales_date LIKE '2022-01%'
GROUP BY B.author_id, B.category 
ORDER BY A.author_id, B.category DESC