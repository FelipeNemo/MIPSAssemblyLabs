.text
.globl main # Marca o incio do código

main: la $t0, A         # Carrega endereços de A em $t0 - Pseudo instrução
     lw $t1,0($t0)     # Lê o valor de A para $t1
     la $t2,B          # Carrega o endereço de B em  $t2 - Pseudo instrução
     lw $t3,0($t2)     # Lê o valor de B para $t3
     addu $t4,$t1,$t3  # $t4 recebe A+B
     la $t5,C          # Carrega endereço de C em $t5 - Pseudo instrução
     sw $t4,0($t5)     # C recebe A+B
     
     
     li $v0, 10
     syscall
     
     
     .data # Marca o fim do código
A:   .word
B:   .word
C:   .word