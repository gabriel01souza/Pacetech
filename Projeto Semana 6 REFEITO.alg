algoritmo "semnome"

var
//TEMPERATURAS
opcaoMenu:  literal
temperaturasCelsius: vetor[1..5] de real
temperaturaCelsius: real
temperaturaFahrenheit: real
i, j: inteiro
f, c: real

//HORARIO DA TEMPERATURA
horaDaTemperatura: vetor[1..5] de real
h: inteiro

//METODO BOLHA
aux, aux1: real
b, m, a: inteiro

procedimento OrdenacaoNumeros()
inicio

para b de 1 ate 5 faca
   para m de 1 ate 5 faca
      se temperaturasCelsius[b] < temperaturasCelsius[m] entao
      
         aux <- temperaturasCelsius[b]
          aux1 <- horaDaTemperatura[b]
          
         temperaturasCelsius[b] <- temperaturasCelsius[m]
         horaDaTemperatura[b] <- horaDaTemperatura[m]
         
         temperaturasCelsius[m] <- aux
          horaDaTemperatura[m] <- aux1
      fimse
   fimpara
fimpara
fimprocedimento

funcao CelsiusParaFahrenheit(celsius: real): real
inicio
      c <- (celsius * 1.8) + 32
      retorne c
fimfuncao

funcao FahrenheitParaCelsius(fahrenheit: real): real
inicio
       f <- (fahrenheit-32)*0.55555556
      retorne f
fimfuncao

// INICIO

inicio
Escreval("Informe a sua convesao;")
Escreval("1 - Celsius para Fahrenheit;")
Escreval("2 - Fahrenheit para Celsius;")
leia(opcaoMenu)

para h de 1 ate 5 faca
EscrevaL("Informe a Hora da temperatura:")
leia(horaDaTemperatura[h])
fimpara



Se opcaoMenu = "1" entao
      Para i de 1 ate 5 faca
             EscrevaL("Informe as temperaturas em celsius:")
             leia(temperaturasCelsius[i])

      fimpara
      limpaTela
      para j de 1 ate 5 faca
           c <- CelsiusParaFahrenheit(temperaturasCelsius[j])
           OrdenacaoNumeros
           Escreval("A temperatura ", temperaturasCelsius[j] ," foi registrada as ", horaDaTemperatura[j] ," horas, correspondente a ", c :3:1," graus celsius")
      fimpara
senao
     para i de 1 ate 5 faca
          Escreval("Informe a temperatura em fahrenheit: ")
          leia(temperaturasCelsius[i])

     fimpara
     limpaTela
para j de 1 ate 5 faca
f <- FahrenheitParaCelsius(temperaturasCelsius[j])
OrdenacaoNumeros
Escreval("A temperatura ", temperaturasCelsius[j] ," foi registrada as ", horaDaTemperatura[j] ," horas, correspondente a ", f :3:1," graus fahrenheit")
fimpara

fimse
//Temperaturas


fimalgoritmo

