def solution(s):
    ss = s.split(' ')
    
    for i in range(len(ss)):
        ss[i] = ss[i].capitalize()

    return ' '.join(ss)


# 2
def solution(s):
    return " ".join([word.capitalize() for word in s.split(" ")])
