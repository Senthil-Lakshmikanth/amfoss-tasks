t=int(input())
for i in range(t):
    n,k = map(int,input().split())
    data= list(map(float,input().split()))
    largest=0.0

    for i in data:
        if i<=0 :
            if k>0:
                if (i*(-1)>largest):
                    largest=i*(-1)
        if(i>largest):
            largest=i
                
    print(largest)
