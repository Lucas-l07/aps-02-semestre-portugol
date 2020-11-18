Algoritmo "Eleicao_para_Presidente"
// Disciplina  : APS - Atividade Prática Supervisionada
// Professor   : Robson 
// Descrição   : Programa simula uma urna eletrônica onde irão votar 2000
//               eleitores. No final é gerado uma estatísticas dos votos
//               válidos e não válidos. Programa pode ser encerrado com
//               código "secreto", semelhante a uma urna eletrônica.
// Autor(a)    : Lucas Paulo Braatz
// Data atual  : 14/10/2020
Var
// Seção de Declarações das variáveis 
   eleitor: vetor[1..2000] de inteiro
   voto: inteiro
   contador: inteiro
   paulo, sergio, celia, vanessa, branco, nulo, abstencao: real
   verificar, quantidade: real
   mais_votos: caracter
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
   Enquanto (contador < 2000) faca
      // Verificação do laço
      contador := contador + 1

      escreval("============== ELEIÇÕES 2020 ===============")
      escreval("")
      escreval("-------- Candidatos para Presidente --------")
      escreval("[1] - Paulo")
      escreval("[2] - Sérgio")
      escreval("[3] - Célia")
      escreval("[4] - Vanessa")
      escreval("[5] - Voto em Branco")
      escreval("============================================")

      escreva("Seu voto: ")
      leia(voto)
   
      // Código para encerrar a votação
      se (voto = 574577) entao
         escreval("")
         LimpaTela
         interrompa
      Fimse
   
      // Armazenamento dos votos no vetor "eleitor"
      Escolha(voto)
         caso 1
            eleitor[contador] := voto
         caso 2
            eleitor[contador] := voto
         caso 3
            eleitor[contador] := voto
         caso 4
            eleitor[contador] := voto
         caso 5
            eleitor[contador] := voto
            
         // Voto considerado Nulo é armazenado como -1
         outrocaso
            eleitor[contador] := -1
      FimEscolha
      
      escreval("Seu voto foi registrado!")
      Timer(2500)
      LimpaTela
      Timer(0)
   FimEnquanto
   
   // Contagem dos votos
   Para contador de 1 ate 2000 faca
      se (eleitor[contador] = 1) entao
         paulo := paulo + 1
         
      senao
      se (eleitor[contador] = 2) entao
         sergio := sergio + 1
         
      senao
      se (eleitor[contador] = 3) entao
         celia := celia + 1
         
      senao
      se (eleitor[contador] = 4) entao
         vanessa := vanessa + 1
         
      senao
      se (eleitor[contador] = 5) entao
         branco := branco + 1

      senao
      se (eleitor[contador] = -1) entao
         nulo := nulo + 1
         
      senao
      se (eleitor[contador] = 0) entao
         abstencao := abstencao + 1

      Fimse
      Fimse
      Fimse
      Fimse
      Fimse
      Fimse
      Fimse
   FimPara
   
   // Quantidade de votos válidos
   quantidade := sergio + paulo + celia + vanessa
   
   // Cálculo porcentagem de votos
   paulo := (paulo * 100) / quantidade
   sergio := (sergio * 100) / quantidade
   celia := (celia * 100) / quantidade
   vanessa := (vanessa * 100) / quantidade
   branco := (branco * 100) / 2000
   nulo := (nulo * 100) / 2000
   abstencao := (abstencao * 100) / 2000
   
   // Porcentagem de votos válidos
   quantidade := (quantidade * 100) / 2000
   
   // "verificar" rebece "Paulo" sendo o candidato com mais votos;
   // apenas para usar como gatilho de comparação com os outros
   // candidatos em seguida
   verificar := paulo
   mais_votos := "Paulo"
   
   se (verificar < sergio) entao
      verificar := sergio
      mais_votos := "Sergio"
   senao
   se (verificar = sergio) entao
      mais_votos := mais_votos + ", " + "Sergio"
   fimse
   fimse
   
   se (verificar < celia) entao
      verificar := celia
      mais_votos := "Célia"
   senao
   se (verificar = celia) entao
      mais_votos := mais_votos + ", " + "Célia"
   fimse
   fimse
   
   se (verificar < vanessa) entao
      verificar := vanessa
      mais_votos := "Vanessa"
   senao
   se (verificar = vanessa) entao
      mais_votos := mais_votos + ", " + "Vanessa"
   fimse
   fimse
   
   escreval("================= Estatísticas =================")
   escreval("")
   escreval("-------- Porcentagem dos Votos Válidos ---------")
   escreval("Paulo................................... ", paulo:2:2, "%")
   escreval("Sérigo.................................. ", sergio:2:2, "%")
   escreval("Célia................................... ", celia:2:2, "%")
   escreval("Vanessa................................. ", vanessa:2:2, "%")
   escreval("")
   escreval("--------- Porcentagem Total de Votos ----------")
   escreval("Votos válidos........................... ", quantidade:2:2, "%")
   escreval("Votos em Branco......................... ", branco:2:2, "%")
   escreval("Votos Nulo.............................. ", nulo:2:2, "%")
   escreval("Abstenção de votos...................... ", abstencao:2:2, "%")
   escreval("")
   escreval("-----------------------------------------------")
   escreval("Candidato(s) com mais votos: ", mais_votos)

Fimalgoritmo