Algoritmo "Controle_Academico"
// Disciplina  : APS - Atividade Pr�tica Supervisionada
// Professor   : Robson 
// Descri��o   : Programa calcula a m�dia de cada aluno e diz se ele foi
//               aprovado ou reprovado. No final mostra a m�dia geral da
//               turma e qual foi o percentual de alunos aprovados e
//               reprovados.
// Autor(a)    : Lucas Paulo Braatz
// Data atual  : 13/10/2020
Var
// Se��o de Declara��es das vari�veis 
   aluno: vetor[1..15] de caractere
   prova_trabalho: vetor[1..15,1..16] de real
   media_geral: vetor[1..15] de real
   i, j: inteiro
   media_prova, media_trabalho, somatorio: real
   porcentagem, presenca: real
   contador, aprovado, reprovado: inteiro
   continuar: caracter
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

   // La�o de repeti��o para 15 alunos
   // � interrompido caso receber o comando "TERMINAR" na vari�vel continuar
   Enquanto (contador < 15) e (continuar <> "TERMINAR") faca

      // Contador de alunos
      contador := contador + 1
      i := i + 1
      
      // Zerado para n�o interferir nas m�dias dos pr�ximos alunos
      media_prova := 0
      
      // Zerado para n�o interferir nas m�dias dos pr�ximos alunos
      media_trabalho := 0
      
      escreval("============ CONTROLE ACAD�MICO ============")
      escreval("")
      
      
      escreva("Digite o nome do Aluno: ")
      leia(aluno[contador])
      
      escreval("--------------------------------------------")
      escreva("Ol�, ", aluno[contador], "! ")
      escreval("Preencha as suas notas abaixo!")
      escreval("")
      
      // Armazena em uma matriz as notas das provas do aluno
      Para i de i ate i faca
        Para j de 1 ate 8 faca
           escreva("Nota Prova", j, ": ")
           leia(prova_trabalho[i,j])
           
           // Somat�rio das provas
           media_prova := media_prova + prova_trabalho[i,j]
        Fimpara
      FimPara
      
      // C�lculo final para obter a M�dia das provas
      media_prova := media_prova / 8
      escreval("")
      escreval("M�dia das Provas: ", media_prova:2:2)
      
      escreval("---------------------------------------------")

      // Armazena em uma matriz as notas dos trabalhos do aluno
      Para i de i ate i faca
        Para j de 9 ate 16 faca
           escreva("Nota Trabalho", j-8, ": ")
           leia(prova_trabalho[i,j])

           // Somat�rio dos trabalhos
           media_trabalho := media_trabalho + prova_trabalho[i,j]
        Fimpara
      FimPara
      
      // C�lculo final para obter a M�dia dos trabalhos
      media_trabalho := media_trabalho / 8
      escreval("")
      escreval("M�dia dos Trabalhos: ", media_trabalho:2:2)
      
      escreval("---------------------------------------------")
      
      escreva("Porcentagem de presen�a nas aulas? (%): ")
      leia(presenca)

      escreval("")
      escreval("================== RESULTADO ==================")
      
      // � feito o c�lculo da M�dia Ponderada do aluno e ao mesmo tempo
      // � armazenado em um vetor.
      // M�dia das provas equivale 80% da M�dia do aluno
      // M�dia dos trabalohs equivale 20% da M�dia do aluno
      media_geral[contador] := (0.8 * media_prova) + (media_trabalho * 0.2)
      escreval("Sua m�dia � ", media_geral[contador]:2:2)
      
      // Verifica se a m�dia do aluno � igual ou maior que 6.0
      se (media_geral[contador] >= 6.0) entao
      
         // Verifica se o aluno obteve presen�a maior ou igual a 75%
         se (presenca >= 75) entao
         
            // Contador de alunos aprovados
            aprovado := aprovado + 1
            escreval("Voc� est� APROVADO!")

         senao
            // Contador de alunos reprovados
            reprovado := reprovado + 1
            escreval("Voc� est� REPROVADO!")
            escreval("Motivo: n�o alcan�ou 75% de prensen�a nas aulas")
         Fimse
         
      senao
         // Contador de alunos reprovados
            reprovado := reprovado + 1
            escreval("Voc� est� REPROVADO!")
            escreval("Motivo: n�o alcan�ou a m�dia 6.0")
      Fimse
      
      escreval("===============================================")
      
      // Vari�vel recebe um "espa�o"
      continuar := " "
      
      // Tecla Enter para o visualg � considerado "vazio"
      // Enquanto continuar for diferente de vazio e diferente de "TERMINAR"
      // � executado o la�o
      Enquanto (continuar <> "") e (continuar <> "TERMINAR") faca
         escreval("APERTE A TECLA ENTER PARA CONTINUAR ")
         leia(continuar)
      FimEnquanto
      
      // Limpa a tela para o pr�ximo aluno
      LimpaTela

   FimEnquanto
   
   // Limpa a tela para exibir os resultados finais
   LimpaTela
   
   // Leitura do vetor que cont�m a m�dia de cada aluno
   Para i de 1 ate 15 faca
   
      // Somat�tio da m�dia de cada aluno
      somatorio := somatorio + media_geral[i]
   FimPara
   
   // C�lculo Final para obter a m�dia geral da turma
   somatorio := somatorio / (aprovado + reprovado)
   
   // C�lculo da porcentagem de alunos aprovados
   porcentagem := (aprovado * 100) / (aprovado + reprovado)
      
   escreval("============ RESULTADOS FINAIS =============")
   escreval("")
   escreval("A m�dia geral dos alunos � ", somatorio:2:2)
   escreval("Percentual de alunos APROVADOS: ", porcentagem:2:2, "%")
   escreval("Percentual de alunos REPROVADOS: ", (100 - porcentagem):2:2, "%")
   escreval("")
   escreval("============================================")
   
   
Fimalgoritmo