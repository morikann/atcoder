# n = int(input())

# def judge(s):
#   dep = 0
#   for i in range(len(s)):
#     if s[i] == "(": dep += 1
#     if s[i] == ")": dep -= 1
#     if dep < 0: return False
#   if dep == 0: return True
#   return False

# for i in range(1 << n):
#   Candidate = ''
#   for j in reversed(range(n)):
#     print(i)
#     if (i & (1 << j)) == 0:
#       Candidate += "("
#     else:
#       Candidate += ")"
#   flag = judge(Candidate)
#   if flag: print(Candidate)



n = int(input())

def judge(S):
  dep = 0
  for i in range(len(S)):
    if S[i] == '(': dep += 1
    if S[i] == ')': dep -= 1
    if dep < 0: return False
  if dep == 0: return True
  return False

for bit in range(1 << n):
  Candidate = ''
  for j in reversed(range(n)):
    if bit & (1 << j) == 0:
      Candidate += '('
    else:
      Candidate += ')'
  flag = judge(Candidate)
  if flag: print(Candidate)
  