-- 코드를 입력하세요
-- 보호 기간이 긴 데이터 조회
# SELECT B.datetime - A.datetime
# FROM animal_ins A JOIN animal_outs B ON A.animal_id = B.animal_id
# ORDER BY (B.datetime - A.datetime) DESC

-- 정답 코드
SELECT A.animal_id, A.name
FROM animal_ins A INNER JOIN animal_outs B USING(animal_id)
ORDER BY (B.datetime - A.datetime) DESC # DATEDIFF(B.datetime, A.datetime)
LIMIT 2 -- 두마리만