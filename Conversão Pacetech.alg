algoritmo "semnome"
var
   numeroRepeticao:inteiro
   repetir:inteiro
   repeticaoMoeda: inteiro
   repetirMoeda: inteiro


   temperatura: literal
   grausCelsius: real
   grausFahrenheit: real
   grausCelsiusConvertido: real
   grausFahrenheitConvertido: real
   
   moeda: literal
   cotacaoDolar: real
   quantidadeReais: real
   dolarConvertido: real
   quantidadeDolar: real
   realConvertido: real
inicio

Escreval("Quantas vezes voc� quer converter a temperatura?")
Leia(numeroRepeticao)
Repetir <- 1

Enquanto (repetir <= numeroRepeticao) faca
      Escreval("Qual a temperatura para convers�o ?(celsius ou fahrenheit) ")
      Leia(temperatura)


      Se (temperatura = "celsius") entao
         Escreval("Informe os graus em Celsius: ")
         Leia(grausCelsius)
         grausCelsiusConvertido <- (grausCelsius * 1.8)+ 32
         Escreval("Os graus em Fahrenheit � ", grausCelsiusConvertido," graus")
      senao
           Escreval("Informa os graus em fahrenheit: ")
           Leia(grausFahrenheit)
           grausFahrenheitConvertido <- (grausFahrenheit - 32)* 0.555
           Escreval("Os graus em Celsius � ", grausFahrenheitConvertido," graus")
       FimSe
       Repetir <- repetir + 1
FimEnquanto


repetirMoeda <- 1

   Escreval("Quantas vezes voc� quer converter moedas?")
   Leia(repeticaoMoeda)
Escreval("Qual a cota��o do dolar?")
Leia(cotacaoDolar)
Enquanto repetirMoeda <= repeticaoMoeda faca

    Escreval("Voc� quer converter dolar ou reais?")
    Leia(moeda)
         Se moeda = "reais" entao
            Escreval("Informe o valor em reais, R$: ")
            Leia(quantidadeReais)
            dolarConvertido <- quantidadeReais / cotacaoDolar
            Escreval("Voc� tem U$", dolarconvertido:5:2, " dolares.")
         senao
              Escreval("Informe o valor em dolar, U$: ")
              Leia(quantidadeDolar)
              realConvertido <- quantidadeDolar * cotacaoDolar
              Escreval("Voc� tem R$", realConvertido, " reais")
         FimSe
    repetirMoeda <- repetirMoeda + 1
FimEnquanto

  
fimalgoritmo
