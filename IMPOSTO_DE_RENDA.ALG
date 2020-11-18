Algoritmo "Imposto_de_Renda"
// Disciplina  : APS - Atividade Prática Supervisionada
// Professor   : Robson 
// Descrição   : Com a informação do salário bruto do usuário, o programa
//               calcula o imposto de renda mensal e anual com e sem o
//               desconto do INSS.
// Autor(a)    : Lucas Paulo Braatz
// Data atual  : 07/10/2020
Var
// Seção de Declarações das variáveis
   salario_bruto, salario_liquido: real
   imposto_renda, imposto_renda_anual, INSS: real
   aliquota, parcela_IRPF: real
   contador: inteiro
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   escreval("==========  DO IMPOSTO DE RENDA 2020 ==========")
   escreval("")
   
   escreva("Digite seu salário bruto: R$")
   leia(salario_bruto)
   
   //------------------------- CÁLCULO INSS -------------------------//
   
   se (salario_bruto <= 1045) entao
      INSS := salario_bruto * 0.075 // 7,5%
   Fimse
   
   se (salario_bruto > 1045) e (salario_bruto <= 2089.60) entao
      INSS := 1045 * 0.075 // 7,5%
      INSS := INSS + (salario_bruto - 1045) * 0.09 // 9%
   Fimse

   se (salario_bruto > 2089.60) e (salario_bruto <= 3134.40) entao
      INSS := 1045 * 0.075 // 7,5%
      INSS := INSS + (1044.60 * 0.09) // 9%
      INSS := INSS + (salario_bruto - 1045 - 1044.60)  * 0.12 // 12%
   Fimse

   se (salario_bruto > 3134.40) e (salario_bruto <= 6101.06) entao
      INSS := 1045 * 0.075 // 7,5%
      INSS := INSS + (1044.60 * 0.09) // 9%
      INSS := INSS + (1044.80 * 0.12) // 12%
      INSS := INSS + (salario_bruto - 1045 - 1044.60 - 1044.60) * 0.14 // 14%
   Fimse

   se (salario_bruto > 6101.60) entao
      INSS := 1045 * 0.075 // 7,5%
      INSS := INSS + (1044.60 * 0.09) // 9%
      INSS := INSS + (1044.80 * 0.12) // 12%
      INSS := INSS + (2966.66 * 0.14) // 14%
   Fimse

   //-------------------- CÁLCULO IMPOSTO DE RENDA --------------------//

   escreval("")
   escreval("------------ Sem Desconto do INSS -------------")
   
   Para contador de 1 ate 2 faca
      se (contador = 2) entao
         escreval("")
         escreval("------------ Com Desconto do INSS -------------")
         salario_bruto := salario_bruto - INSS
      Fimse
      
      se (salario_bruto <= 1903.98) entao
         escreval("Isento de Imposto de Renda")
         imposto_renda := 0
      Fimse

      se (salario_bruto >= 1903.99) e (salario_bruto < 2826.66) entao
         aliquota := 7.5 / 100  // 7,5%
         parcela_IRPF := 142.80
      Fimse

      se (salario_bruto >= 2826.66) e (salario_bruto < 3751.06) entao
         aliquota := 15 / 100  // 15%
         parcela_IRPF := 354.80
      Fimse

      se (salario_bruto >= 3751.06) e (salario_bruto < 4664.68) entao
         aliquota := 22.5 / 100  // 22,5%
         parcela_IRPF := 636.13
      Fimse

      se salario_bruto > 4664.68 entao
         aliquota := 27.5 / 100  // 27,5%
         parcela_IRPF := 869.36
      Fimse
   
      se (contador = 2) entao
         escreval("Taxa do INSS: R$ ", INSS:2:2)
         escreval("")
      Fimse
   
      // Verificação para calcular apenas os salários que não são insentos
      // de imposto de renda
      se (salario_bruto >= 1903.99) entao
      
         // Cálculo do Imposto de Renda Mensal
         imposto_renda := (salario_bruto * aliquota) - parcela_IRPF
         escreval("Imposto de Renda Mensal: R$  ", imposto_renda:2:2)

         // Cálculo do Imposto de Renda Anual (considerando 12 meses)
         imposto_renda_anual := imposto_renda * 12
         escreval("Imposto de Renda Anual:  R$ ", imposto_renda_anual:2:2)
         
         escreval("")
      Fimse
         
      // Cálculo do Salário Líquido Mensal
      salario_liquido := salario_bruto - imposto_renda
      escreval("Salário Líquido Mensal: R$  ", salario_liquido:2:2)

      // Cálculo do Salário Líquido Anual (considerando 12 meses)
      salario_liquido := salario_liquido * 12
      escreval("Salário Líquido Anual:  R$ ", salario_liquido:2:2)
         
   FimPara
   
   escreval("-----------------------------------------------")
   
Fimalgoritmo