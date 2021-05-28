n=int(input())
D="D"
star="*"
i=1

for i in range(1,n+1,2):
    d="D"*i
    output=d.center(n,"*")
    print(output)

for i in range(n-2, 0, -2):
    d="D"*i
    output=d.center(n,"*")
    print(output)
