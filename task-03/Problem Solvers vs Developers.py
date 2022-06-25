n, m = map(int, input().split())
dev_pow = list(map(int, input().split()))
ps_pow = list(map(int, input().split()))

if n > m:
    print("NO")

ps_pow.sort()
dev_pow.sort()

summ = 0
index = 0

for i in dev_pow:
    for j in range(index, m):
        if(ps_pow[j] > i):
            summ = summ + ps_pow[j]
            index = j
            break
    else:
        print("NO")
        exit()
            
print("YES")
print(summ)
