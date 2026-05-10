Algoritmo "BuscaBinariaDuplicatas"

Var
   vet: vetor[1..10] de inteiro
   valor, i: inteiro
      v: vetor[1..10] de inteiro
Procedimento buscaBinaria(v,n, valor: inteiro)
Var
   inicio, fim, meio: inteiro
   encontrou: logico
Inicio

   inicio <- 1
   fim <- n
   encontrou <- falso

   Enquanto inicio <= fim faca

      meio <- (inicio + fim) div 2

      Se v[meio] = valor Entao

         encontrou <- verdadeiro

         i <- meio

         Enquanto (i >= 1) e (v[i] = valor) faca
            i <- i - 1
         FimEnquanto

         i <- i + 1

         Escreval("Ocorrencias encontradas nas posicoes:")

         Enquanto (i <= n) e (v[i] = valor) faca
            Escreval(i)
            i <- i + 1
         FimEnquanto

         Pare

      Senao
         Se valor < v[meio] Entao
            fim <- meio - 1
         Senao
            inicio <- meio + 1
         FimSe
      FimSe

   FimEnquanto

   Se nao encontrou Entao
      Escreval("Valor nao encontrado")
   FimSe

FimProcedimento

Inicio

   vet[1] <- 1
   vet[2] <- 2
   vet[3] <- 2
   vet[4] <- 3
   vet[5] <- 4
   vet[6] <- 4
   vet[7] <- 4
   vet[8] <- 5
   vet[9] <- 6
   vet[10] <- 7

   Escreva ("Digite o valor procurado: ")
   Leia(valor)
   buscaBinaria(vet, n, valor)
FimAlgoritmo