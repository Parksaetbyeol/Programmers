def solution(seoul):
    answer = ''
    for i, n in enumerate(seoul):
        if n == "Kim":
            answer = "김서방은 " + str(i) + "에 있다"
    return answer

# 2
# def solution(seoul):
#     return "김서방은 " + str(seoul.index("Kim")) + "에 있다"

# 3
# def solution(seoul):
#     return "김서방은 {}에 있다" .format(seoul.index('Kim')) 