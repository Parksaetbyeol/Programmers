# def solution(s):
#     if (len(s) == 4 or len(s) == 6) and s.isdigit():
#         return True
#     else:
#         return False
  
# 2
def solution(s):
    return s.isdigit() and len(s) in (4,6)