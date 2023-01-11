# 1
def solution(x):
    sum_ = 0
    for i in str(x):
        sum_ += int(i)
        if x % sum_ == 0:
            answer = True
        else:
            answer = False
    return answer

# 2 한줄 풀이
# def solution(x):
#     return x % sum([int(i) for i in str(x)]) == 0 
# 나머지 값이 0 인지 판단해서 맞으면 True