-- 코드를 입력하세요
SELECT MCDP_CD AS '진료과코드', COUNT(PT_NO) AS '5월예약건수'
FROM APPOINTMENT
WHERE YEAR(APNT_YMD) = '2022' AND MONTH(APNT_YMD) = '05'
GROUP BY mcdp_cd
ORDER BY 5월예약건수 , 진료과코드 -- '' 실행은 되지만 채점을 틀렸다고 함(지정된 답 아니면 틀렸다고 하나?)