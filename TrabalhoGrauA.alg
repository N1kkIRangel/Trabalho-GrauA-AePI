//Componentes do grupo: Guilherme de Azambuja e Silva e Nicolle Caroline de
//Oliveira Rangel de Matos

Algoritmo "TrabalhoAePI"

Var
   sexo,corOlho,corCabelo,novo: caracter
   peso,altura, percentual,mediaPeso,pesoMasculino,pesoFeminino,pesoOutros,pesoTotal: real
   idade,totalPessoas,totalMasculino,totalFeminino,totalOutros,mediaIdade: inteiro

   idadeMaisVelho, idadeMaisNovo: inteiro

   totalOlhoAzul, totalOlhoVerde, totalOlhoCastanho, totalOlhoPreto: inteiro
   totalCabeloLouro, totalCabeloPreto, totalCabeloCastanho, totalCabeloRuivo: inteiro

   maioresVerdePreto: inteiro

Inicio

   // zerar variáveis
   totalPessoas <- 0
   totalMasculino <- 0
   totalFeminino <- 0
   totalOutros <- 0

   pesoMasculino <- 0
   pesoFeminino <- 0
   pesoOutros <- 0
   pesoTotal <- 0

   idadeMaisVelho <- 0
   idadeMaisNovo <- 0

   totalOlhoAzul <- 0
   totalOlhoVerde <- 0
   totalOlhoCastanho <- 0
   totalOlhoPreto <- 0

   totalCabeloLouro <- 0
   totalCabeloPreto <- 0
   totalCabeloCastanho <- 0
   totalCabeloRuivo <- 0

   maioresVerdePreto <- 0

   //sexo
   repita
      repita
         escreva("Escolha uma opção para sexo (M-Masculino, F-Feminino e O-Outro): ")
         leia(sexo)
         escolha (sexo)
         caso "M"
            escreval ("Masculino")
            totalMasculino <- totalMasculino + 1
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

      // Cor do olho
      repita
         escreva("Escolha uma opção para Cor do Olho (A-Azul, V-Verde, C-Castanho e P-Preto): ")
         leia(corOlho)
         escolha (corOlho)
         caso "A"
            escreval("Azul")
            totalOlhoAzul <- totalOlhoAzul + 1
         caso "V"
            escreval("Verde")
            totalOlhoVerde <- totalOlhoVerde + 1
         caso "C"
            escreval("Castanho")
            totalOlhoCastanho <- totalOlhoCastanho + 1
         caso "P"
            escreval ("Preto")
            totalOlhoPreto <- totalOlhoPreto + 1
         outrocaso
            escreval ("Cor Inválida!")
         fimescolha
      ate ((corOlho = "A") ou (corOlho = "V") ou (corOlho = "C") ou (corOlho = "P"))

      //Cor do cabelo
      repita
         escreva("Escolha uma opção para Cor do Cabelo (L-Louros, P-Pretos, C-Castanhos e R-Ruivos): ")
         leia(corCabelo)
         escolha (corCabelo)
         caso "L"
            escreval ("Louros")
            totalCabeloLouro <- totalCabeloLouro + 1
         caso "P"
            escreval ("Pretos")
            totalCabeloPreto <- totalCabeloPreto + 1
         caso "C"
            escreval ("Castanhos")
            totalCabeloCastanho <- totalCabeloCastanho + 1
         caso "R"
            escreval ("Ruivos")
            totalCabeloRuivo <- totalCabeloRuivo + 1
         outrocaso
            escreval ("Cor Inválida!")
         fimescolha
      ate ((corCabelo = "L") ou (corCabelo = "P") ou (corCabelo = "C") ou (corCabelo = "R"))

      //altura
      repita
         escreva ("Digite a altura: ")
         leia (altura)
         se ((altura <=0) ou (altura > 2.50)) entao
            escreval ("Altura inválida!")
         fimse
      ate ((altura > 0) e (altura < 2.50))

      //idade
      repita
         escreva ("Digite a idade: ")
         leia (idade)
         se ((idade <=0) ou (idade > 120)) entao
            escreval ("Idade inválida!")
         fimse
      ate ((idade > 0) e (idade < 120))

      // idade mais velha e mais nova
      se totalPessoas = 0 entao
         idadeMaisVelho <- idade
         idadeMaisNovo <- idade
      senao
         se idade > idadeMaisVelho entao
            idadeMaisVelho <- idade
         fimse

         se idade < idadeMaisNovo entao
            idadeMaisNovo <- idade
         fimse
      fimse

      // maiores de idade com olhos verdes e cabelos pretos
      se (idade >= 18) e (corOlho = "V") e (corCabelo = "P") entao
         maioresVerdePreto <- maioresVerdePreto + 1
      fimse

      //peso
      repita
         escreva ("Digite o peso: ")
         leia (peso)
         pesoTotal <- pesoTotal + peso
         se ((peso <=0) ou (peso >= 700)) entao
            escreval ("Peso inválido!")
         fimse
      ate ((peso > 0) e (peso < 700))

      //médias de peso
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

   escreval ("")

   percentual <- (totalMasculino / totalPessoas) * 100
   escreval ("O percentual de homens é: ",percentual,"%")
   percentual <- (totalFeminino / totalPessoas) * 100
   escreval ("O percentual de mulheres é: ",percentual,"%")
   percentual <- (totalOutros / totalPessoas) * 100
   escreval ("O percentual de Outros é: ",percentual,"%")
   
   escreval ("")

   se totalMasculino > 0 entao
      mediaPeso <- pesoMasculino / totalMasculino
      escreval("A média de peso masculino é de: ", mediaPeso)
   fimse

   se totalFeminino > 0 entao
      mediaPeso <- pesoFeminino / totalFeminino
      escreval("A média de peso feminino é de: ", mediaPeso)
   fimse

   se totalOutros > 0 entao
      mediaPeso <- pesoOutros / totalOutros
      escreval("A média de peso de outros é de: ", mediaPeso)
   fimse

   mediaPeso <- (pesoTotal / totalPessoas)
   escreval ("A média total do peso das pessoas é de: ",mediaPeso)
   
   escreval ("")

   // idade
   escreval ("Idade do mais velho: ",idadeMaisVelho)
   escreval ("Idade do mais novo: ",idadeMaisNovo)
   
   escreval ("")

   // cor do cabelo

   percentual <- (totalCabeloLouro / totalPessoas) * 100
   escreval ("O percentual de pessoas loiras é de: ",percentual,"%")
   percentual <- (totalCabeloPreto / totalPessoas) * 100
   escreval ("O percentual de pessoas com cabelo preto é de: ",percentual,"%")
   percentual <- (totalCabeloCastanho / totalPessoas) * 100
   escreval ("O percentual de pessoas morenas é de: ",percentual,"%")
   percentual <- (totalCabeloRuivo / totalPessoas) * 100
   escreval ("O percentual de pessoas ruivas é de: ",percentual,"%")
   
   escreval ("")

   // cor dos olhos

   percentual <- (totalOlhoAzul / totalPessoas) * 100
   escreval ("O percentual de pessoas com o olho azul é de: ",percentual,"%")
   percentual <- (totalOlhoVerde / totalPessoas) * 100
   escreval ("O percentual de pessoas com o olho verde é de: ",percentual,"%")
   percentual <- (totalOlhoCastanho / totalPessoas) * 100
   escreval ("O percentual de pessoas com o olho castanho é de: ",percentual,"%")
   percentual <- (totalOlhoPreto / totalPessoas) * 100
   escreval ("O percentual de pessoas com o olho preto é de: ",percentual,"%")
   
   escreval ("")

   // maiores de idade com olhos verdes e cabelos pretos

   escreval ("Maiores de idade com olhos verdes e cabelos pretos: ",maioresVerdePreto)

Fimalgoritmo
