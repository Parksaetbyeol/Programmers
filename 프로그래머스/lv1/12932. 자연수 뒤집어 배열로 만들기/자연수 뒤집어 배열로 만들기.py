# 1
# def solution(n):
#     answer = []
#     for i in reversed(str(n)):
#         answer.append(int(i)) # 인덱스 하나하나에 접근해 int로 변경해서 저장
#     return answer

# 2
# def solution(n):
#     return [int(i) for i in reversed(str(n))]

# 3 map 사용
def solution(n):
    return list(map(int, reversed(str(n)))) # reversed한 n을 전부 int로 변환