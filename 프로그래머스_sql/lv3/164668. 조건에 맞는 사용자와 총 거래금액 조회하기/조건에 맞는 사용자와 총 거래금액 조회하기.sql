SELECT user_id, nickname, TOTAL_SALES
FROM USED_GOODS_USER U
    JOIN (SELECT writer_id, SUM(price) AS TOTAL_SALES
            FROM USED_GOODS_BOARD
            GROUP BY writer_id, status
            HAVING status  = 'DONE'
                AND SUM(price) >= 700000) B
    ON B.WRITER_ID = U.USER_ID
ORDER BY 3;

