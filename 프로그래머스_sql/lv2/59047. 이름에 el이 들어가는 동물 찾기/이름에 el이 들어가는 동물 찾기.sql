-- 코드를 입력하세요
SELECT ANIMAL_ID, NAME
FROM animal_ins
WHERE name LIKE '%el%' AND animal_type = 'Dog'
ORDER BY name
