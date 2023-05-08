def solution(s):
    answer = ''
    new_list = s.split(' ')
    for i in new_list:
        for j in range(len(i)):
            if j % 2 == 0: # 짝수라면
                answer += i[j].upper() # 대문자로 만들어서 넣기
            else:
                answer += i[j].lower()
        answer += ' '
    return answer[0:-1]