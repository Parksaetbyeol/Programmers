-- 코드를 입력하세요
# 보호 시작일보다 입양일이 더 빠른 데이터 조회
# SELECT A.animal_id, A.datetime, B.datetime
# FROM animal_ins A LEFT JOIN animal_outs B ON A.animal_id = B.animal_id
# WHERE A.datetime > B.datetime
# ORDER BY A.datetime

SELECT A.animal_id, A.name
FROM animal_ins A LEFT JOIN animal_outs B ON A.animal_id = B.animal_id
WHERE A.datetime > B.datetime
ORDER BY A.datetime
