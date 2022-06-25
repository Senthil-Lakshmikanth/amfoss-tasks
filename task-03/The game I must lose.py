N, M = map(int, input().split())

odd=[]
her_rounds=0

while N%2 == 0:
    her_rounds=her_rounds+1
    N=N/2
    
for i in range(1,M+1):
    his_rounds=0
    i2=i
    while i2%2==0 :
        his_rounds=his_rounds+1
        i2=i2/2
    if his_rounds<her_rounds:
        odd.append(i)

print(len(odd))
for i in odd:
    print(i,end=' ') 
