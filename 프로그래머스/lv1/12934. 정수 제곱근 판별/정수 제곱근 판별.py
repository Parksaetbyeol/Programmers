def solution(n):
    answer = 0
    num = n ** 0.5 # 0.5제곱을 해서 정수형이 나오면 제곱근임
    if num == int(num):
        answer = (num+1) ** 2
    else:
        answer = -1
    return answer