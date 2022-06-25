import math
n=int(input())

# root=math.sqrt(n)

count=[]
c=0
for i in range(1, n+1):
    if n%i==0:
        count.append(i)
# print(count)
for i in count:
    for j in count:
        if i*j==n:
            c=c+1
print(c)
