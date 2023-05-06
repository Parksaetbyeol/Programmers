def solution(s):
    numbers = list(map(int, s.split())) # s를 공백으로 분리해서 하나씩 int로 변환
    return str(min(numbers)) + " " + str(max(numbers))