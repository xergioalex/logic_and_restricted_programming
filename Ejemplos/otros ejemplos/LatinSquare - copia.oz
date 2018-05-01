%LatinSquare para una matriz 3x3
%ABC
%DEF
%GHI
declare
proc {LatinSquare Sol }
    sol(a:A b:B c:C d:D e:E f:F g:G h:H i:I j:J)= Sol
in
 
   %Dominio
   Sol ::: 0#9
   
   % Restriciones
   A+B+C+D+E+F+G+H+I+J =:10
   0*A+1*B+2*C+3*D+4*E+5*F+6*G+7*H+8*I+9*J =: 10

   
   %Distribucion
   {FD.distribute ff Sol}
end

{ExploreAll LatinSquare}