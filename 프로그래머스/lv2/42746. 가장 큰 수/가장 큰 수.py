def solution(numbers):
    nums = list(map(str, numbers)) # numbers를 하나씩 str로 변경해서 list로 묶기
    nums.sort(key = lambda x : x * 3, reverse = True) #number는 1000이하 이니까 x3(반복)한 값으로 비교해서 역정렬
    return str(int(''.join(nums)))