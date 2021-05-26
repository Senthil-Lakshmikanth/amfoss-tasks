def solve():
    k = int(input())
    string = input()
    lst = string.strip().split()
    sum = 0
    if len(lst) <= k :
        return -1
    else :
        for i in lst[k] :
            sum += ord(i)
    return sum
#main()
n = int(input())
for i in range(n):
    print(solve())
