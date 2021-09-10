#Wie ranking3, nur mit veraenderbarem d

function ranking4 (P, d) 
  #nullspalten finden
  n = columns(P);
  for i=1:n;
    if P(:,i) == zeros(n);
      P(:,i) = 1/n;
    endif
  endfor
  #Daempfungsfaktor
  M = ones(n);
  P2 = d*P+(1-d)*(1/8)*M
  #eigentliche
  [a, b] = eig(P2);
  a = a(:,1:1)
  [c, d] = sortrows (-a);
  d
endfunction