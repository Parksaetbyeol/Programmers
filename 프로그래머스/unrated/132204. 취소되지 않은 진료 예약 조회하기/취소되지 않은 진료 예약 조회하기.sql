-- 코드를 입력하세요
SELECT APNT_NO, PT_NAME, AP.PT_NO, D.MCDP_CD, D.DR_NAME, AP.APNT_YMD
FROM appointment AP JOIN patient P ON AP.pt_no = P.pt_no
    JOIN doctor D ON AP.mddr_id = D.dr_id
WHERE apnt_ymd LIKE '2022-04-13%' -- DATE_FORMAT(apnt_ymd,'%Y-%m-%d') = '2022-04-13'
    AND apnt_cncl_yn = 'N'
    AND D.MCDP_CD = 'CS'
ORDER BY 6;