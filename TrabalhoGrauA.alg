//Componentes do grupo: Guilherme de Azambuja e Silva e Nicolle Caroline de
//Oliveira Rangel de Matos

Algoritmo "TrabalhoAePI"

Var
   sexo,corOlho,corCabelo,novo: caracter
   peso,altura, percentual,mediaPeso,pesoMasculino,pesoFeminino,pesoOutros,pesoTotal: real
   idade,totalPessoas,totalMasculino,totalFeminino,totalOutros,mediaIdade: inteiro
Inicio
   totalPessoas <- 0
   totalMasculino <-0
   totalFeminino <- 0
   totalOutros <- 0
   pesoMasculino <- 0
   pesoFeminino<- 0
   pesoOutros <- 0
   pesoTotal <- 0

   repita
      repita
         escreva("Escolha uma opção para sexo (M-Masculino, F-Feminino e O-Outro): ")
         leia(sexo)
         escolha (sexo)
         caso "M"
            escreval ("Masculino")
            totalMasculino <-  totalMasculino + 1
         caso "F"
            escreval ("Feminino")
            totalFeminino <- totalFeminino + 1
         caso "O"
            escreval ("Outro")
            totalOutros <- totalOutros + 1
         outrocaso
            escreval ("Sexo Inválido!")
         fimescolha
      ate ((sexo = "M") ou (sexo = "F") ou (sexo = "O"))

      repita
         escreva("Escolha uma opção para Cor do Olho (A-Azul ,V-Verde, C-Castanho e P-Preto): ")
         leia(corOlho)
         escolha (corOlho)
         caso "A"
            escreval("Azul")
         caso "V"
            escreval("Verde")
         caso "C"
            escreval("Castanho")
         caso "P"
            escreval ("Preto")
         outrocaso
            escreval ("Cor Inválida!")
         fimescolha
      ate ((corOlho = "A") ou (corOlho = "V") ou (corOlho = "C") ou (corOlho = "P"))

      repita
         escreva("Escolha uma opção para Cor do Cabaelo (L-Louros ,P-Pretos, C-Castanhos e R-Ruivos): ")
         leia(corCabelo)
         escolha (corCabelo)
         caso "L"
            escreval ("Louros")
         caso "P"
            escreval ("Pretos")
         caso "C"
            escreval ("Castanhos")
         caso "R"
            escreval ("Ruivos")
         outrocaso
            escreval ("Cor Indisponível!")
         fimescolha
      ate ((corCabelo = "L") ou (corCabelo = "P") ou (corCabelo = "P") ou (corCabelo = "C") ou (corCabelo = "R"))

      escreva ("Digite a altura: ")
      leia (altura)

      escreva ("Digite a idade: ")
      leia (idade)

      escreva ("Digite o peso: ")
      leia (peso)
      pesoTotal <- pesoTotal + peso
      se (sexo = "M") entao
         pesoMasculino <- pesoMasculino + peso
      senao
         se (sexo = "F") entao
            pesoFeminino <- pesoFeminino + peso
         senao
            se (sexo = "O") entao
               pesoOutros <- pesoOutros + peso
            fimse
         fimse
      fimse

      totalPessoas <- totalPessoas + 1

      escreva ("Você quer fazer outro cadastro (digite S-sim ou N-não): ")
      leia (novo)
      limpatela()
   ate (novo = "N")
   escreval ("Total de pessoas: ",totalPessoas)
   escreval ("Total de homens: ",totalMasculino)
   escreval ("Total de mulheres: ",totalFeminino)
   escreval ("Total de outros: ",totalOutros)

   percentual <- (totalMasculino / totalPessoas) * 100
   escreval (" O percentual de homens é: ",percentual,"%")

   percentual <- (totalFeminino / totalPessoas) * 100
   escreval (" O percentual de mulheres é: ",percentual,"%")

   percentual <- (totalOutros / totalPessoas) * 100
   escreval (" O percentual de Outros é: ",percentual,"%")

   mediaPeso <- (pesoMasculino / totalMasculino)
   escreval ("A média de peso masculino é de: ",mediaPeso)
   mediaPeso <- (pesoFeminino / totalFeminino)
   escreval ("A média de peso feminino é de: ",mediaPeso)
   mediaPeso <- (pesoOutros / totalOutros)
   escreval ("A média de peso feminino é de: ",mediaPeso)
   mediaPeso <- (pesoTotal / totalPessoas)
   escreval ("A média total do pesso das pessoas é de: ",mediaPeso)
Fimalgoritmo