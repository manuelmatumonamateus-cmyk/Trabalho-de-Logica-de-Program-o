Algoritmo "PosicaoInsercao"

Var
   vet: vetor[1..5] de inteiro
   valor, i: inteiro
   v: vetor[1..5] de inteiro
Funcao posicaoInsercao(vet, n, valor: inteiro):inteiro
Var
   i: inteiro
Inicio
   Para i <- 1 Ate n faca
      Se valor < v[i] Entao
         retorne i
      FimSe
   FimPara

   retorne n + 1
FimFuncao

Inicio
   vet[1] <- 2
   vet[2] <- 4
   vet[3] <- 6
   vet[4] <- 8
   vet[5] <- 10

   Escreva("Digite um valor: ")
   Leia(valor)

   Escreval("Posicao correta: ", posicaoInsercao(vet, 5, valor))
FimAlgoritmo