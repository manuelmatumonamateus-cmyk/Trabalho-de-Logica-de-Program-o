Algoritmo "OrdenarMatrizLinhas"

Var
   mat: vetor[1..5,1..5] de inteiro
   i, j, k, temp: inteiro

Inicio

   Para i <- 1 Ate 5 faca
      Para j <- 1 Ate 5 faca
         Escreva("Digite mat[", i, ",", j, "]: ")
         Leia(mat[i,j])
      FimPara
   FimPara

   Para i <- 1 Ate 5 faca

      Para j <- 1 Ate 4 faca
         Para k <- 1 Ate 5-j faca

            Se mat[i,k] > mat[i,k+1] Entao
               temp <- mat[i,k]
               mat[i,k] <- mat[i,k+1]
               mat[i,k+1] <- temp
            FimSe

         FimPara
      FimPara

   FimPara

   Escreval("Matriz ordenada por linhas:")

   Para i <- 1 Ate 5 faca
      Para j <- 1 Ate 5 faca
         Escreval(mat[i,j], " ")
      FimPara
      Escreval()
   FimPara

FimAlgoritmo