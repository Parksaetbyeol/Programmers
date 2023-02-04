a, b = map(int, input().strip().split(' '))

for i in range(b): # b = 3, *을 5번 print한거를 3번 반복
    for j in range(a): # a = 5
        print('*', end = '') # *을 5번 print
    print('')
    
# 2 - for문없이 해결
# a, b = map(int, input().strip().split(' '))
# answer = ('*'*a + '\n') * b
# print(answer)