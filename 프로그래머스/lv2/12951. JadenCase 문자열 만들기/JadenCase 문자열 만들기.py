def solution(s):
    ss = s.split(' ')
    
    for i in range(len(ss)):
        ss[i] = ss[i].capitalize()

    return ' '.join(ss)