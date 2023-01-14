def solution(n):
    nlist = list(str(n))
    nlist.sort(reverse=True)
    answer = int("".join(nlist))
    return answer