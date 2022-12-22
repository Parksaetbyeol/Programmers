-- 코드를 입력하세요
SELECT A.ANIMAL_ID, A.ANIMAL_TYPE, A.NAME
FROM animal_ins A INNER JOIN animal_outs B ON A.animal_id = B.animal_id
WHERE A.sex_upon_intake LIKE 'Intact%'
    AND B.sex_upon_outcome NOT LIKE 'Intact%'
ORDER BY A.animal_id

# SELECT O.ANIMAL_ID, O.ANIMAL_TYPE, O.NAME
# FROM ANIMAL_OUTS O JOIN ANIMAL_INS I ON I.ANIMAL_ID = O.ANIMAL_ID
# WHERE I.SEX_UPON_INTAKE <> O.SEX_UPON_OUTCOME