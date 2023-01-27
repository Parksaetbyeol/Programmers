# replace(변경하려는 문자, 변경 후 문자, 횟수)
def solution(phone_number):
    for i in range(len(phone_number)-4):
        phone_number = phone_number.replace(phone_number[i],"*",1) 
    return phone_number

# 2 : 맨 뒤 4자리뺀 숫자만큼 *로 치환 + 뒤에 4자리 가져오기
# def solution(phone_number):
#     return "*"*(len(phone_number)-4) + phone_number[-4:]

# 3 다른 풀이
# def solution(phone_number):
#     num = len(phone_number)
#     back = phone_number[-4:]
#     return "*"*(num-4)+back