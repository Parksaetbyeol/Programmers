-- 코드를 입력하세요
SELECT ANIMAL_TYPE, COUNT(ANIMAL_TYPE) 'COUNT'
FROM animal_ins
GROUP BY animal_type
ORDER BY animal_type
