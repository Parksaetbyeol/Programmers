SELECT user_id, nickname, address "전체주소", phone "전화번호"
FROM (
        SELECT U.user_id, U.nickname
            , CONCAT(city, ' ',street_address1, ' ',street_address2) AS address
            , CONCAT(substr(TLNO,1,3), '-', substr(TLNO,4,4), '-', substr(TLNO,8,4)) AS phone #SUBSTR(문자열,시작위치,출력할길이)
            , COUNT(*) AS user_count
        FROM used_goods_user AS U
            INNER JOIN used_goods_board AS B ON U.user_id = B.writer_id
        GROUP BY U.user_id
    ) user
WHERE user_count >= 3
ORDER BY 1 DESC
