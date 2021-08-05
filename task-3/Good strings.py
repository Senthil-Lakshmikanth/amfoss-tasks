N=int(input())
s=input()

count=0
zero=0
one=0

if N==1:
    if ("1" in s or "0" in s): 
        count=1
else:
    for i in s:
        if(0==i):
            zero+=1
    for i in s:
        if(1==i):
            one+=1
    if(one==zero):
        count+=2
print(count)
