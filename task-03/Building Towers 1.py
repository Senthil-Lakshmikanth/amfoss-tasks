N=int(input())
W=input().split(" ")
W.sort()
a=[]
for i in range(0, len(W)):
    a.append(W.count(W[i]))
plus=a.count(1)
data=list(dict.fromkeys(W))
print(max(a),end=' ')
print(len(data))
