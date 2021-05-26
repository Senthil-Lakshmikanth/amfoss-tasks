first_line_string=input()
first_line=first_line_string.split()
second_line_string=input()
second_line=second_line_string.split()
N=int(first_line[0])
M=int(first_line[1])

sum_list=[]

while N>0:
    if len(second_line)>=2:
        for i in range(0,len(second_line)-1):
            sum=int(second_line[i])+int(second_line[i+1])
            sum_list.append(sum)
        second_line.remove(second_line[0])
    N=N-1
if M in sum_list:
    print("True")
else:
    print("False")
