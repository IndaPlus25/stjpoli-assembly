    .text
    .globl multiply

addi a3, zero, 1
multiply:

#initialise our two numbers
addi a0, zero, 10
addi a1, zero, 1

facloop:

addi t0, zero, 0 #initialise t0 the index/ counter
addi t1, zero, 0 #initialise t1 the sum holder

loop:

beq  t0, a0, end #if t0 == a0 jump to end
add  t1, t1, a1 #t1 += b
addi t0, t0, 1 #t0++
j    loop #jump to loop

end:

#return sum
mv   a0, t1
ret
beqz a3 , loopf

faculty:
addi a3, zero, 0


addi a0, zero, 1
add a1, zero, 1 #the number we want to faculty

addi t2, zero, 1
addi t3, zero, 1

loopf:
beq t2, a1, endfac
addi t0, t0, 1
add t1, t1, a0

endfac:

ret





