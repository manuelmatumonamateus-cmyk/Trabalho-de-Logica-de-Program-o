Algoritmo "MergeSort"

Var
   vet: vetor[1..10] de inteiro
   i: inteiro
    v: vetor[1..10] de inteiro
Procedimento merge(var v, inic, meio, fim: inteiro)
Var
   aux: vetor[1..10] de inteiro
   i, j, k: inteiro
Inicio

   i <- inic
   j <- meio + 1
   k <- inic

   Enquanto (i <= meio) e (j <= fim) faca

      Se v[i] < v[j] Entao
         aux[k] <- v[i]
         i <- i + 1
      Senao
         aux[k] <- v[j]
         j <- j + 1
      FimSe

      k <- k + 1

   FimEnquanto

   Enquanto i <= meio faca
      aux[k] <- v[i]
      i <- i + 1
      k <- k + 1
   FimEnquanto

   Enquanto j <= fim faca
      aux[k] <- v[j]
      j <- j + 1
      k <- k + 1
   FimEnquanto

   Para i <- inic Ate fim faca
      v[i] <- aux[i]
   FimPara

FimProcedimento

Procedimento mergeSort(var v, inic, fim: inteiro)
Var
   meio: inteiro
Inicio

   Se inicio < fim Entao

      meio <- (inic + fim) div 2

      mergeSort(v, inic, meio)
      mergeSort(v, meio + 1, fim)

      merge(v, inic, meio, fim)

   FimSe

FimProcedimento

Inicio

   Para i <- 1 Ate 10 faca
      Escreva ("Digite o valor ", i, ": ")
      Leia(vet[i])
   FimPara

   mergeSort(vet, 1, 10)

   Escreval("Vetor ordenado:")

   Para i <- 1 Ate 10 faca
      Escreval(vet[i], " ")
   FimPara

FimAlgoritmo