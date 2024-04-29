#ler inteiros begin, end e item aplicando um for para armazenalos
#operação usar o while no vetor

.data
        entrada: .asciiz "Digite o begin, end e item: "
        saida: .asciiz "Os valores são: "
        
.text 
        li $v0, 4 #imprime a string  entrada
        la $a0, entrada
        syscall
        
        li $v0, 5 #Lê os inteiros
        syscall
        
        move $t0, $v0 # o valor fornecido foi de $v0 movido para em $t0
        
        li $v0, 4 #imprime a string  entrada
        la $a0, saida
        syscall
        
        li $v0, 1 # imprime o que está em $a0
        move $a0, $t0
        syscall