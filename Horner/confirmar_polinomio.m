#Esta funcion permite al usuario ver el polinomio que se genero, y confirmarle#al programa. Un '1' contin�a con el script, un '0' vuelve a correr la funcion#generadora de polinomios, y un valor distinto a estos vuelve a preguntar, (para#eso es que est� el 'do')function esCorrecto = confirmar_polinomio (vec) do printf('El polinomio generado es: ');    polyout(vec, 'x');    esCorrecto = input("Ingrese '1' para confirmar, o '0' para volver a ingresar: "); until (esCorrecto == 1)|(esCorrecto == 0)endfunction