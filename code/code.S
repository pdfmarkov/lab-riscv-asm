.data

N:
.word 4
M:
.word 2
matrix:
.word 1, 0, 1, 4
.word 2, -1, -2, 2
result:
.word 0

.text

main:
la a2, N
la a3, M
la a4, matrix
la a5, result
call process

exit:
addi a0, x0, 10
ecall

process:
lw t1, 0(a2) # N
lw t2, 0(a3) # M
addi t4, x0, 0 # row pointer
addi t5, x0, 0 # result to save

new_row:
addi t3, x0, 0 # row elem number

new_elem:
lw t6, 0(a4) # load value from array
addi a4, a4, 4 # increment array pointer
addi t3, t3, 1 # increment row elem number
call check_and_sum
blt t3, t1, new_elem
addi t4, t4, 1
blt t4, t2, new_row
sw t5, 0(a5) # save the result
la ra, exit
ret

check_and_sum:
blez t6, out # check elem > 0
add t5, t5, t6 # sum
out: 
ret