#vector deve ser declarado na área de dados
#CONTEUDO DO VETOR: -5, -1, 5, 9, 12, 15, 21, 29, 31, 58, 250, 325

#ENTRADAS:
#peça para o usuário informar o intervalo de busca no vetor (índices das posições
#inicial e final) e o número que deverá ser procurado
#int begin = índice inicial informado pelo usuário;
#int end = índice final informado pelo usuário;
#int item = número que deverá ser procurado, informado pelo usuário
#int i;

#OPERAÇÃO
#while (begin <= end) { /* Condição de parada */
#i = (begin + end) / 2; /* Calcula o meio do sub-vetor */
#if (vector[i] == item) { /* Item encontrado */
#“imprime i;” /* posição onde se encontra o item procurado */
#}
#if (vector[i] < item) { /* Item está no sub-vetor à direita */
#begin = i + 1;
#} else { /* vector[i] > item. Item está no sub-vetor à esquerda */
#end = i;
#}
#}
#“imprime -1;” /* item não encontrado */
#}

#APLICAR TESTES:



.text
.globl main

main:	la    $a0,LC2        
	li    $v0,4        # Imprime "Digite o indice incial, final e o valor a ser procurado no vetor:"
  	syscall  
  	
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
#vector: .word -5, -1, 5, 9, 12, 15, 21, 29, 31, 58, 250, 325
LC1: .asciiz "Valor de cont: "
LC2: .asciiz "Digite o indice incial, final e o valor a ser procurado no vetor: "
