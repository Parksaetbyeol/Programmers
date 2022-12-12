-- 코드를 입력하세요
# SELECT INS.animal_id, INS.datetime, OUTS.animal_id
# FROM animal_ins INS LEFT JOIN animal_outs OUTS ON INS.animal_id = OUTS.animal_id
# WHERE OUTS.animal_id IS NULL 
-- INS테이블에는 있으나 입양가지 않은 animal_id는 OUTS 테이블에서 NULL로 뜨기때문에 OUTS.animal_id IS NULL 로 입양을 못간 동물 데이터 조회

# 정답코드
SELECT INS.name 'NAME', INS.datetime 'DATETIME'
FROM animal_ins INS LEFT JOIN animal_outs OUTS ON INS.animal_id = OUTS.animal_id
WHERE OUTS.datetime IS NULL
ORDER BY INS.datetime limit 3