clc;
clear;
#{
Este es el script principal, que articula las funciones definidas en
los otros '.m', que básicamente guarda en la variable 'pol' el polinomio
a generar en generar_polinomio.m
#}

do 
  pol=generar_polinomio();
until (confirmar_polinomio(pol)==1)
xvalue = input('En que valor lo quiere evaluar? En X = ');
printf('P(X=%i) = %i\n',xvalue,horner(pol,length(pol),xvalue));