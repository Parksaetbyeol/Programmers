-- 코드를 입력하세요
# SELECT A.datetime - B.datetime
# FROM animal_ins A JOIN animal_outs B ON A.animal_id = B.animal_id
# ORDER BY (A.datetime - B.datetime) DESC

SELECT A.animal_id, A.name
FROM animal_ins A INNER JOIN animal_outs B USING(animal_id)
ORDER BY (B.datetime - A.datetime) DESC
LIMIT 2