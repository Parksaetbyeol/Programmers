-- 코드를 입력하세요
SELECT book_id, DATE_FORMAT(published_date,'%Y-%m-%d') PUBLISHED_DATE
FROM book
WHERE YEAR(published_date)='2021' AND category = '인문'