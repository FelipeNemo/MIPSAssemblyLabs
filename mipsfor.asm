# for (i=0; i<size; i++)
#  cont = cont + i;
# printf ("Valor de cont: %d" cont);
# Nesse for nós pedimos ao usuário para digitar o numero que daremos a resposta da soma
.text
.globl main

main:	la    $a0,LC2        
	li    $v0,4        # Imprime "Digite o valor de size: "
  	syscall   
# Se eu quero chamar a leitura de um inteiro 4 vezes eu preciso fazer um laço na instrução abaixo
# E colocar um store abaixo 
	li    $v0, 5        # Serviço 5 É o que faz a ligação  
	syscall            # Leitura de um inteiro. Lembre-se que o valor digitado no teclado será armazenado no registrador $v0 (olhar tabela de códigos syscall) 
  	move  $t0, $v0     # Move o valor armazenado em $v0 para $t0
	
	li 	$t2, 0	# $t2 será o registrador utiizdo para acumular a soma dos valores
	li 	$t1, 0	# $t1 conterá o valor inicial da variável i
	
loop:	beq 	$t1, $t0, fim	# compara se i==size, se igual, deve sair do loop e imprimir o valor de cont ($t2)
	addu 	$t2, $t2, $t1	# cont=cont+i
	addiu 	$t1, $t1, 1	# i++
	j loop # o label "loop" está no beq
	
fim:	la    $a0,LC1        
	li    $v0,4        # Imprime "Valor de cont: "
  	syscall  
  	
  	move  $a0, $t2     # Imprime o valor da soma calculada
	li    $v0, 1           
  	syscall   


	li $v0, 10
	syscall
	
.data 
LC1: .asciiz "Valor de cont: "
LC2: .asciiz "Digite o valor de size: "