N=int(input())
a=input()
b=input()
A_list=a.split()
B_list=b.split()
output=[]
for i in range(len(B_list)):
    a=int(A_list[i])
    b=int(B_list[i])
    r=b//a
    output.append(r)
print(min(output))
