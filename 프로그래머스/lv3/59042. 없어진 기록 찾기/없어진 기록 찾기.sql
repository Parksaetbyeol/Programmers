-- 코드를 입력하세요
SELECT B.animal_id, B.name
FROM animal_ins A RIGHT JOIN animal_outs B ON A.animal_id = B.animal_id
WHERE A.name IS NULL AND B.name IS NOT NULL -- 보호소에는 기록 없고, 입양기록은 있음
ORDER BY B.animal_id
-- INS데이터가 유실되었으니까 OUTS 데이터가 더 많으므로 OUTS 로 RIGHT JOIN