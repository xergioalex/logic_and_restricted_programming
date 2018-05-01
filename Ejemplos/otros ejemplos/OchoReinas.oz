%Manejamos una tupla de datos, donde cada Qi representa la posicion de una reina
%en una matriz 8x8 correspondiendo a su indice.
declare
proc {Queens Sol}
   sol(q1:Q1 q2:Q2 q3:Q3 q4:Q4 q5:Q5 q6:Q6 q7:Q7 q8:Q8)=Sol
  
in
    %Dominio
    Sol ::: 1#8
   
    %Restricciones de propagacion
    {FD.distinct Sol}
   
    Q1-Q2 \=:1 Q2-Q1 \=:1
    Q1-Q3 \=:2 Q3-Q1 \=:2
    Q1-Q4 \=:3 Q4-Q1 \=:3
    Q1-Q5 \=:4 Q5-Q1 \=:4
    Q1-Q6 \=:5 Q6-Q1 \=:5
    Q1-Q7 \=:6 Q7-Q1 \=:6
    Q1-Q8 \=:7 Q8-Q1 \=:7
    Q2-Q3 \=:1 Q3-Q2 \=:1
    Q2-Q4 \=:2 Q4-Q2 \=:2
    Q2-Q5 \=:3 Q5-Q2 \=:3
    Q2-Q6 \=:4 Q6-Q2 \=:4
    Q2-Q7 \=:5 Q7-Q2 \=:5
    Q2-Q8 \=:6 Q8-Q2 \=:6
    Q3-Q4 \=:1 Q4-Q3 \=:1
    Q3-Q5 \=:2 Q5-Q3 \=:2
    Q3-Q6 \=:3 Q6-Q3 \=:3
    Q3-Q7 \=:4 Q7-Q3 \=:4
    Q3-Q8 \=:5 Q8-Q3 \=:5
    Q4-Q5 \=:1 Q5-Q4 \=:1
    Q4-Q6 \=:2 Q6-Q4 \=:2
    Q4-Q7 \=:3 Q7-Q4 \=:3
    Q4-Q8 \=:4 Q8-Q4 \=:4
    Q5-Q6 \=:1 Q6-Q5 \=:1
    Q5-Q7 \=:2 Q7-Q5 \=:2
    Q5-Q8 \=:3 Q8-Q5 \=:3
    Q6-Q7 \=:1 Q7-Q6 \=:1
    Q6-Q8 \=:2 Q8-Q6 \=:2
    Q7-Q8 \=:1 Q8-Q7 \=:1

    %Distribucion
    {FD.distribute ff Sol} 
end
{ExploreAll Queens}





