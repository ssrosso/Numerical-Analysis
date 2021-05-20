#Horner por metodo recursivo
function sol = horner (vec,n,x)
  if (n==1)
    sol = vec(n);
  else
    sol = horner(vec,n-1,x)*x + vec(n);
  endif
endfunction