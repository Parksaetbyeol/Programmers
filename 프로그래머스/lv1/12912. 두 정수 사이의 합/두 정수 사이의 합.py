# 1 - 틀림
# def solution(a, b):
#     answer = 0
#     for i in range(a,b+1):
#         answer += i
#     return answer

# 2
def solution(a, b):
    answer = 0
    for i in range(min(a,b), max(a,b)+1):
        answer += i
    return answer

# 3
# def solution(a, b):
#     if a < b:
#         return sum(list(range(a, b+1)))
#     else:
#         return sum(list(range(b, a+1)))
    
# 4
# def sulution(a, b):
#     return sum(range(min(a,b), max(a,b) + 1))