Algoritmo "Controle_Academico"
// Disciplina  : APS - Atividade Prática Supervisionada
// Professor   : Robson 
// Descrição   : Programa calcula a média de cada aluno e diz se ele foi
//               aprovado ou reprovado. No final mostra a média geral da
//               turma e qual foi o percentual de alunos aprovados e
//               reprovados.
// Autor(a)    : Lucas Paulo Braatz
// Data atual  : 13/10/2020
Var
// Seção de Declarações das variáveis 
   aluno: vetor[1..15] de caractere
   prova_trabalho: vetor[1..15,1..16] de real
   media_geral: vetor[1..15] de real
   i, j: inteiro
   media_prova, media_trabalho, somatorio: real
   porcentagem, presenca: real
   contador, aprovado, reprovado: inteiro
   continuar: caracter
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

   // Laço de repetição para 15 alunos
   // É interrompido caso receber o comando "TERMINAR" na variável continuar
   Enquanto (contador < 15) e (continuar <> "TERMINAR") faca

      // Contador de alunos
      contador := contador + 1
      i := i + 1
      
      // Zerado para não interferir nas médias dos próximos alunos
      media_prova := 0
      
      // Zerado para não interferir nas médias dos próximos alunos
      media_trabalho := 0
      
      escreval("============ CONTROLE ACADÊMICO ============")
      escreval("")
      
      
      escreva("Digite o nome do Aluno: ")
      leia(aluno[contador])
      
      escreval("--------------------------------------------")
      escreva("Olá, ", aluno[contador], "! ")
      escreval("Preencha as suas notas abaixo!")
      escreval("")
      
      // Armazena em uma matriz as notas das provas do aluno
      Para i de i ate i faca
        Para j de 1 ate 8 faca
           escreva("Nota Prova", j, ": ")
           leia(prova_trabalho[i,j])
           
           // Somatório das provas
           media_prova := media_prova + prova_trabalho[i,j]
        Fimpara
      FimPara
      
      // Cálculo final para obter a Média das provas
      media_prova := media_prova / 8
      escreval("")
      escreval("Média das Provas: ", media_prova:2:2)
      
      escreval("---------------------------------------------")

      // Armazena em uma matriz as notas dos trabalhos do aluno
      Para i de i ate i faca
        Para j de 9 ate 16 faca
           escreva("Nota Trabalho", j-8, ": ")
           leia(prova_trabalho[i,j])

           // Somatório dos trabalhos
           media_trabalho := media_trabalho + prova_trabalho[i,j]
        Fimpara
      FimPara
      
      // Cálculo final para obter a Média dos trabalhos
      media_trabalho := media_trabalho / 8
      escreval("")
      escreval("Média dos Trabalhos: ", media_trabalho:2:2)
      
      escreval("---------------------------------------------")
      
      escreva("Porcentagem de presença nas aulas? (%): ")
      leia(presenca)

      escreval("")
      escreval("================== RESULTADO ==================")
      
      // É feito o cálculo da Média Ponderada do aluno e ao mesmo tempo
      // é armazenado em um vetor.
      // Média das provas equivale 80% da Média do aluno
      // Média dos trabalohs equivale 20% da Média do aluno
      media_geral[contador] := (0.8 * media_prova) + (media_trabalho * 0.2)
      escreval("Sua média é ", media_geral[contador]:2:2)
      
      // Verifica se a média do aluno é igual ou maior que 6.0
      se (media_geral[contador] >= 6.0) entao
      
         // Verifica se o aluno obteve presença maior ou igual a 75%
         se (presenca >= 75) entao
         
            // Contador de alunos aprovados
            aprovado := aprovado + 1
            escreval("Você está APROVADO!")

         senao
            // Contador de alunos reprovados
            reprovado := reprovado + 1
            escreval("Você está REPROVADO!")
            escreval("Motivo: não alcançou 75% de prensença nas aulas")
         Fimse
         
      senao
         // Contador de alunos reprovados
            reprovado := reprovado + 1
            escreval("Você está REPROVADO!")
            escreval("Motivo: não alcançou a média 6.0")
      Fimse
      
      escreval("===============================================")
      
      // Variável recebe um "espaço"
      continuar := " "
      
      // Tecla Enter para o visualg é considerado "vazio"
      // Enquanto continuar for diferente de vazio e diferente de "TERMINAR"
      // é executado o laço
      Enquanto (continuar <> "") e (continuar <> "TERMINAR") faca
         escreval("APERTE A TECLA ENTER PARA CONTINUAR ")
         leia(continuar)
      FimEnquanto
      
      // Limpa a tela para o próximo aluno
      LimpaTela

   FimEnquanto
   
   // Limpa a tela para exibir os resultados finais
   LimpaTela
   
   // Leitura do vetor que contém a média de cada aluno
   Para i de 1 ate 15 faca
   
      // Somatótio da média de cada aluno
      somatorio := somatorio + media_geral[i]
   FimPara
   
   // Cálculo Final para obter a média geral da turma
   somatorio := somatorio / (aprovado + reprovado)
   
   // Cálculo da porcentagem de alunos aprovados
   porcentagem := (aprovado * 100) / (aprovado + reprovado)
      
   escreval("============ RESULTADOS FINAIS =============")
   escreval("")
   escreval("A média geral dos alunos é ", somatorio:2:2)
   escreval("Percentual de alunos APROVADOS: ", porcentagem:2:2, "%")
   escreval("Percentual de alunos REPROVADOS: ", (100 - porcentagem):2:2, "%")
   escreval("")
   escreval("============================================")
   
   
Fimalgoritmo