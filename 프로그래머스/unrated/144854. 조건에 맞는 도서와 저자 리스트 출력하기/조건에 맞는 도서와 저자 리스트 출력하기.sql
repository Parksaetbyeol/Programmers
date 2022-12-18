-- 코드를 입력하세요
SELECT BOOK_ID, AUTHOR_NAME, DATE_FORMAT(published_date, '%Y-%m-%d') PUBLISHED_DATE
FROM book B JOIN author A ON B.author_id = A.author_id
WHERE B.category = '경제'
ORDER BY published_date