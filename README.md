## Assembly
Esse diretório foi criado para os estudos de Fundamentos de Sistemas
Digitais.
#Fundamentos:

#Desvio condicional:

- Alto nível
if(A==B):
A++
else:
B++

- Baixo nível

Versão 1:
Beq A, B, Label
addiu B, B, 1
J continua
Label: addiu A, A, 1
continua...

versão 2:
BNE A, B, Label
addiu A, A, 1
J continua
Label: addiu B, B, 1
continua...

Bgez
Bgtz
Bgt: Big great than
...
#Intrução de comparação:

Menor que:
- Se A < B ele atribui 1 ao C, se não atribui 0
slt C, A, B 
Beq C, zero, label

