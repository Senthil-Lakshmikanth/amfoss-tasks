N=int(input())
money=list(map(int,input().split()))
Q=int(input())

queries = [[0]*2]*Q
for i in range(Q):
    queries[i]=list(map(int,input().split()))

for i in range(Q):
        a=queries[i][0]
        b=queries[i][1]
        sum=0
        for i in range(a, b+1):
            sum=sum+money[i-1]
        print(sum)
