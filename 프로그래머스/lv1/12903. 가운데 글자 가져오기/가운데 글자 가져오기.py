def solution(s):
    if len(s) % 2 == 1: # 글자가 홀수일 때 : 5
        return s[len(s)//2] # s[2] 위치 가져오기
    else:
        return s[(len(s)//2-1) : (len(s)//2+1)]