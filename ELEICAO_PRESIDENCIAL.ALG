Algoritmo "Eleicao_para_Presidente"
// Disciplina  : APS - Atividade Pr�tica Supervisionada
// Professor   : Robson 
// Descri��o   : Programa simula uma urna eletr�nica onde ir�o votar 2000
//               eleitores. No final � gerado uma estat�sticas dos votos
//               v�lidos e n�o v�lidos. Programa pode ser encerrado com
//               c�digo "secreto", semelhante a uma urna eletr�nica.
// Autor(a)    : Lucas Paulo Braatz
// Data atual  : 14/10/2020
Var
// Se��o de Declara��es das vari�veis 
   eleitor: vetor[1..2000] de inteiro
   voto: inteiro
   contador: inteiro
   paulo, sergio, celia, vanessa, branco, nulo, abstencao: real
   verificar, quantidade: real
   mais_votos: caracter
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc...
   Enquanto (contador < 2000) faca
      // Verifica��o do la�o
      contador := contador + 1

      escreval("============== ELEI��ES 2020 ===============")
      escreval("")
      escreval("-------- Candidatos para Presidente --------")
      escreval("[1] - Paulo")
      escreval("[2] - S�rgio")
      escreval("[3] - C�lia")
      escreval("[4] - Vanessa")
      escreval("[5] - Voto em Branco")
      escreval("============================================")

      escreva("Seu voto: ")
      leia(voto)
   
      // C�digo para encerrar a vota��o
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
            
         // Voto considerado Nulo � armazenado como -1
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
   
   // Quantidade de votos v�lidos
   quantidade := sergio + paulo + celia + vanessa
   
   // C�lculo porcentagem de votos
   paulo := (paulo * 100) / quantidade
   sergio := (sergio * 100) / quantidade
   celia := (celia * 100) / quantidade
   vanessa := (vanessa * 100) / quantidade
   branco := (branco * 100) / 2000
   nulo := (nulo * 100) / 2000
   abstencao := (abstencao * 100) / 2000
   
   // Porcentagem de votos v�lidos
   quantidade := (quantidade * 100) / 2000
   
   // "verificar" rebece "Paulo" sendo o candidato com mais votos;
   // apenas para usar como gatilho de compara��o com os outros
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
      mais_votos := "C�lia"
   senao
   se (verificar = celia) entao
      mais_votos := mais_votos + ", " + "C�lia"
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
   
   escreval("================= Estat�sticas =================")
   escreval("")
   escreval("-------- Porcentagem dos Votos V�lidos ---------")
   escreval("Paulo................................... ", paulo:2:2, "%")
   escreval("S�rigo.................................. ", sergio:2:2, "%")
   escreval("C�lia................................... ", celia:2:2, "%")
   escreval("Vanessa................................. ", vanessa:2:2, "%")
   escreval("")
   escreval("--------- Porcentagem Total de Votos ----------")
   escreval("Votos v�lidos........................... ", quantidade:2:2, "%")
   escreval("Votos em Branco......................... ", branco:2:2, "%")
   escreval("Votos Nulo.............................. ", nulo:2:2, "%")
   escreval("Absten��o de votos...................... ", abstencao:2:2, "%")
   escreval("")
   escreval("-----------------------------------------------")
   escreval("Candidato(s) com mais votos: ", mais_votos)

Fimalgoritmo