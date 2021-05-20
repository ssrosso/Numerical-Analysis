#metodo de jacobi resolver sistemas de ecuaciones 
clc;
NumeroIteraciones = input("Ingrese las itereaciones: ");    
x = input("Ingrese el valor x inicial: ") ;     
y = input("Ingrese el valor y inicial: ") ;        
z = input("Ingrese el valor z inicial: ") ;                                          
b1 = input("Ingrese el valor b1: ") ;     #  ->  b1 
b2 = input("Ingrese el valor b2: ") ;     #  ->  b2 
b3 = input("Ingrese el valor b3: ") ;     #  ->  b3      

                                                                                       #calcular diagonal dominante
 function ea = erroraproximado(xnuevo,xanterior)         #|17| > |-2| + |-3| si cumple
    ea = abs(((xnuevo-(xanterior))/(xnuevo))*100);            #|21| > |-5| + |-2| si cumple
end                                                                                 #|22| > |-5| + |-5| si cumple
 
 i = 1;
fprintf("%s\t %s\t %s\t %s\t %s\t %s\t %s\t %s\n",'i','x','y','z','|Ex|','|Ey|','|Ez|' );
fprintf ("\n");  
while(i <= NumeroIteraciones)                 
    
    xn = (b1- ( -2*(y) - 3*(z) ))/17;                   
    yn = (b2- ( -5*(x) - 2*(z) ))/21;          
    zn = (b3- ( -5*(x) - 5*(y) ))/22;    
  
    fprintf('%d\t', i); 
    fprintf('%.4f\t', xn);              
    fprintf('%.4f\t', yn);               
    fprintf('%.4f\t', zn);    
    x = xn;
    y = yn;
    z = zn; 
      
    if i > 1
       fprintf('%.4f\t', erroraproximado(x, x_anterior));
       fprintf('%.4f\t', erroraproximado(y, y_anterior));  
       fprintf('%.4f\t', erroraproximado(z, z_anterior));
     end
    x_anterior = xn;
    y_anterior = yn;
    z_anterior = zn; 
    i++;
    fprintf ("\n"); 
end
    fprintf ("\n"); 
    fprintf("solucion para  x = %.4f\t\n", x); 
    fprintf("solucion para  y = %.4f\t\n", y); 
    fprintf("solucion para  z = %.4f\t\n", z);
    fprintf('b1 = %.2f\t\n', 17*x - 2*y - 3*z  ); 
    fprintf('b2 = %.2f\t\n',  -5*x + 21*y - 2*z ); 
    fprintf('b3 = %.2f\t\n', -5*x - 5*y + 22*z ); 
    fprintf ("\n");