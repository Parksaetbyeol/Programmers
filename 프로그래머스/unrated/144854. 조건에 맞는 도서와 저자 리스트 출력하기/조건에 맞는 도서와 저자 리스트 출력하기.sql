-- 코드를 입력하세요
SELECT book_id, author_name, DATE_FORMAT(published_date, '%Y-%m-%d') PUBLISHED_DATE
FROM book B JOIN author A ON B.author_id = A.author_id
WHERE B.category = '경제'
ORDER BY published_date

