Algoritmo "InsertionSort_Deslocamentos"

Var
// Seção de Declarações das variáveis 
vet: vetor[1..10]de inteiro
i,n,deslocamentos:inteiro
v: vetor[1..10]de inteiro
Procedimento insertion_sort(v,n:inteiro)
var
i,j,chave:inteiro
  Inicio
   deslocamentos<-0
   para i<-2 ate n faca
   chave<-v[i]
   j<-i-1
         enquanto(j>=1)e(v[j]>chave) faca
         v[j+1]<-v[j]
         deslocamentos<-deslocamentos+1
         j<-j+1
         Fimenquanto
        v[j+1]<-chave
        Fimpara
        escreval("Número de deslocamentos: ",deslocamentos)
       Fimprocedimento
  Inicio
  n<-10
  para i<-1 ate n faca
  escreva("Digite o valor ",i,": ")
  leia(vet[i])
  Fimpara
  insertion_sort(vet,n)
  escreval("Vetor ordenado: ")
  para i<-1 ate n faca
       escreva(vet[i], " ")
       Fimpara
Fimalgoritmo