SELECT A.ANIMAL_ID, A.ANIMAL_TYPE, A.NAME
FROM animal_ins A INNER JOIN animal_outs B ON A.animal_id = B.animal_id
WHERE A.sex_upon_intake LIKE 'Intact%' # 보호소에 들어오기전에는 중성화안함
    AND B.sex_upon_outcome NOT LIKE 'Intact%' # 나갈때는 중성화함 
ORDER BY A.animal_id

# 2
# SELECT O.ANIMAL_ID, O.ANIMAL_TYPE, O.NAME
# FROM ANIMAL_OUTS O JOIN ANIMAL_INS I ON I.ANIMAL_ID = O.ANIMAL_ID
# WHERE I.SEX_UPON_INTAKE <> O.SEX_UPON_OUTCOME
