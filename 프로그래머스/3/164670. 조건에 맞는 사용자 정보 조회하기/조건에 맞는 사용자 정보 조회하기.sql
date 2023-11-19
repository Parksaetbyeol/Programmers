# 1
SELECT user_id, nickname, address as "전체주소", number as "전화번호"
FROM (SELECT B.user_id, B.nickname 
            , CONCAT(city, ' ', street_address1, ' ', street_address2) as address
            , CONCAT(substr(TLNO,1,3), '-', substr(TLNO,4,4), '-', substr(TLNO,8,4)) as number # substr(문자,시작위치,갯수)
            , COUNT(*) as user_count
        FROM USED_GOODS_USER B
    INNER JOIN USED_GOODS_BOARD A
        ON A.writer_id = B.user_id
        GROUP BY B.user_id) table1 # as 지정 필요
WHERE user_count >= 3
ORDER BY user_id DESC;

# 2
# SELECT A.WRITER_ID AS USER_ID, B.NICKNAME,
#         CONCAT(B.CITY , SPACE(1), CONCAT(B.STREET_ADDRESS1, SPACE(1) ,B.STREET_ADDRESS2)) AS 전체주소, 
#              CONCAT(LEFT(B.TLNO,3),'-', MID(B.TLNO,4,4),'-', RIGHT(B.TLNO,4)) AS 전화번호 
# FROM USED_GOODS_BOARD AS A
#     INNER JOIN USED_GOODS_USER AS B
#     ON A.WRITER_ID = B.USER_ID
#     GROUP BY A.WRITER_ID
# HAVING COUNT(A.WRITER_ID)>=3
# ORDER BY B.USER_ID DESC;