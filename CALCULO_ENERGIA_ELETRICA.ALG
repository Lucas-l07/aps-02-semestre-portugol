Algoritmo "Calculo_Consumo_Energia"
// Disciplina  : APS - Atividade Pr�tica Supervisionada
// Professor   : Robson 
// Descri��o   : Programa calcula a fatura do m�s de agosto e setembro,
//               para 10 usu�rios de uma empresa de energia el�trica,
//               por meio das pot�ncias el�tricas informadas pelo indiv�duo.
//               No fim informa se houve ou n�o economia no m�s de setembro,
//               al�m do total de energia consumida e o total a pagar.
// Autor(a)    : Lucas Paulo Braatz
// Data atual  : 20/10/2020
Var
// Se��o de Declara��es das vari�veis 
   usuario: vetor[1..10] de caracter
   potencia_Ago: vetor[1..10] de real
   potencia_Set: vetor[1..10] de real
   contador, quantidade: inteiro
   equipamento: real
   Eel, Total_Ago, Total_Set, porcentagem: real
   continuar: caracter
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
   Para contador de 1 ate 10 faca
      escreval("=============== ENERGIA PARA TODOS ===============")
      escreval("")
      escreva("Digite o seu nome: ")
      leia(usuario[contador])
      
      escreval("")
      escreval("--------------------------------------------------")
      escreval("")
      
      escreval("Ol�, ", usuario[contador], "!")
      escreval("Para cada dia dos meses a seguir, digite a pot�ncia ")
      escreval("em Watts(w) do equipamento utilizado.")
      escreval("")
      escreval("--------------------- Agosto ---------------------")
      
      // La�o de repei��o para 10 dias do m�s de agosto
      Para quantidade de 1 ate 10 faca:
      
         // Se o n�mero for difetente de 10, � adicionado um 0 a esquerda
         se (quantidade <> 10) entao
            escreva("Dia 0", quantidade:1:0, ": ")
            leia(equipamento)

         senao
            escreva("Dia", quantidade, ": ")
            leia(equipamento)
         Fimse
         
         // Armazena em um vetor as pot�ncias de cada dia
         potencia_Ago[contador] := potencia_Ago[contador] + equipamento
         
      FimPara
      
      escreval("")
      
      // C�lculo da energia consumida, onde
      // foi considerando 3h para cada dia
      Eel := (potencia_Ago[contador] * 3) / 1000
      
      // C�lculo do total a pagar no m�s de agosto
      // considerando R$ 0,45 por cada 1 KWh consumido
      Total_Ago := Eel * 0.45
      
      escreval("Seu consumo de energia foi: ", Eel:2:2, " KWh")
      escreval("Total a pagar: R$ ", Total_Ago:2:2)
      
      escreval("")
      continuar := " "
      Enquanto continuar  <> "" faca
         escreval("APERTE A TECLA ENTER PARA CONTINUAR")
         leia(continuar)
      FimEnquanto
      
      escreval("-------------------- Setembro --------------------")
      escreval("")
      
      // La�o de repei��o para 10 dias do m�s de setembro
      Para quantidade de 1 ate 10 faca:
         se (quantidade <> 10) entao
         
            // Se o n�mero for difetente de 10, � adicionado um 0 a esquerda
            escreva("Dia 0", quantidade:1:0, ": ")
            leia(equipamento)

         senao
            escreva("Dia", quantidade, ": ")
            leia(equipamento)
         Fimse

         // Armazena em um vetor as pot�ncias de cada dia
         potencia_Set[contador] := potencia_Set[contador] + equipamento
         
      FimPara

      escreval("")

      // C�lculo da energia consumida, onde
      // foi considerando 3h para cada dia
      Eel := (potencia_Set[contador] * 3) / 1000
      
      // C�lculo do total a pagar no m�s de agosto
      // considerando R$ 0,45 por cada 1 KWh consumido
      Total_Set := Eel * 0.45
      
      escreval("Seu consumo de energia foi: ", Eel:2:2, " KWh")
      escreval("Total a pagar: R$ ", Total_Set:2:2)
      
      escreval("")
      continuar := " "
      Enquanto continuar  <> "" faca
         escreval("APERTE A TECLA ENTER PARA CONTINUAR")
         leia(continuar)
      FimEnquanto

      LimpaTela

      escreva("=================== FATURAS =====================")
      escreval("")
      escreval("Usu�rio: ", usuario[contador])
      escreval("Consumo de Energia m�s de Agosto....", potencia_Ago[contador], " KWh")
      escreval("Fatura m�s de Agosto................ R$ ", Total_Ago:2:2)
      escreval("Consumo de Energia m�s de Setembro..", potencia_Set[contador], " KWh")
      escreval("Fatura m�s de Setembro.............. R$ ", Total_Set:2:2)
      escreval("")
      escreval("Consumo Total: ", potencia_Ago[contador] + potencia_Set[contador], "KWh")
      escreval("Total a pagar: R$ ", Total_Ago + Total_Set:2:2)
      
      se (potencia_Ago[contador] > potencia_Set[contador]) entao
         porcentagem := (potencia_Set[contador] * 100) / potencia_Ago[contador]
         porcentagem := 100 - porcentagem
         escreval("No m�s de Setembro houve uma economia de ", porcentagem:2:2, "%")
         
      senao
         porcentagem := (potencia_Set[contador] * 100) / potencia_Ago[contador]
         porcentagem := porcentagem - 100
         escreval("No m�s de Setembro houve um aumento de ", porcentagem:2:2, "%")
      Fimse
      
      escreval("=================================================")
      
      escreval("")
      
      // Vari�vel recebe um "espa�o"
      continuar := " "
      
      // Tecla Enter para o visualg � considerado "vazio"
      // Enquanto continuar for diferente de vazio � executado o la�o
      Enquanto (continuar  <> "") e (continuar <> "TERMINAR") faca
         escreval("APERTE A TECLA ENTER PARA CONTINUAR")
         leia(continuar)
         
      FimEnquanto
      
      // Condi��o para interromper o programa
      se (continuar = "TERMINAR") entao
         interrompa
      Fimse
      
      LimpaTela
   FimPara
Fimalgoritmo