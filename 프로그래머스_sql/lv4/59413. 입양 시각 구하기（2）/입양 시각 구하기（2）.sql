-- 코드를 입력하세요
SET @HOUR := -1;  # HOUR 변수에 -1 넣기

SELECT (@HOUR := @HOUR +1) AS HOUR,  # @HOUR에 +1 씩 대입하기
    (SELECT COUNT(*) 
     FROM animal_outs 
     WHERE HOUR(datetime) = @HOUR) AS COUNT 
FROM animal_outs
WHERE @HOUR < 23  # 23시까지니까 22+1에서 종료.
