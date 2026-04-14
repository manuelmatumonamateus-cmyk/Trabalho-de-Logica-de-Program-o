
//  
//  
Algoritmo "SistemaDeEstacionamento"

Var
Placas:vetor[1..100]de caractere
horasEntrada:vetor[1..100]de inteiro
opcao,i,totalVeiculos:inteiro
placaSaida:caractere
horaSaida,tempoPermanencia:inteiro
valorCobrado,faturamentoTotal,tempoTotalAcumulado:real
encontrado:logico

Inicio

totalVeiculos<-0
faturamentoTotal<-0
tempoTotalAcumulado<-0

repita

escreval("…SISTEMA DE GESTÃO DE ESTACIONAMENTO…")
escreval("1.Registrar Entrada")
escreval("2.Registrar Saída e pagamento")
escreval("3.Relatório Diário")
escreval("4.Encerrar Sistema")
leia(opcao)

escolha(opcao)

caso 1
   totalVeiculos<-totalVeiculos+1

   escreva("Digite a placa do veículo: ")
   leia(placas[totalVeiculos])

   escreva("Hora de entrada(0-23): ")
   leia(horasEntrada[totalVeiculos])

   escreval("Entrada registrada com sucesso.")

caso 2
   escreva("Digite a placa para a saída: ")
   leia(placaSaida)

   encontrado<-falso

   para i de 1 ate totalVeiculos faca

      se(placas[i]=placaSaida)entao

         encontrado<-verdadeiro

         escreva("Hora de saída(0-23): ")
         leia(horaSaida)

         tempoPermanencia<-horaSaida-horasEntrada[i]

         se(tempoPermanencia<=1)entao
            valorCobrado<-5
         senao
            se(tempoPermanencia<=2)entao
               valorCobrado<-8
            senao
               se(tempoPermanencia<=3)entao
                  valorCobrado<-10
               senao
                  valorCobrado<-10+((tempoPermanencia-3)*2)
               fimse
            fimse
         fimse

         faturamentoTotal<-faturamentoTotal+valorCobrado
         tempoTotalAcumulado<-tempoTotalAcumulado+tempoPermanencia

         escreval("…RECIBO…")
         escreval("Placa:",placas[i])
         escreval("Tempo:",tempoPermanencia," hora(s)")
         escreval("Total a pagar: AKZ ",valorCobrado:2:2)

         placas[i]<-"SAIU"

      fimse

   fimpara

   se(não encontrado)entao
      escreval("ERRO: Placa não encontrada no Sistema.")
   fimse

caso 3
   escreval("…RELATÓRIO DIÁRIO…")
   escreval("Total de veículos atendidos: ",totalVeiculos)
   escreval("Faturamento total: AKZ ",faturamentoTotal:2:2)

   se(totalVeiculos>0)entao
      escreval("Tempo médio: ",tempoTotalAcumulado/totalVeiculos:2:1," horas")
   fimse

caso 4
   escreval("…ENCERRANDO SISTEMA…")

fimescolha

ate opcao=4
Fimalgoritmo