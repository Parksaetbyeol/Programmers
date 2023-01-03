-- 코드를 입력하세요
SELECT MEMBER_ID, MEMBER_NAME, GENDER, DATE_FORMAT(DATE_OF_BIRTH, '%Y-%m-%d') DATE_OF_BIRTH
FROM member_profile
WHERE tlno IS NOT NULL 
    AND MONTH(date_of_birth) = '3' 
    AND gender = 'W'
ORDER BY MEMBER_ID
