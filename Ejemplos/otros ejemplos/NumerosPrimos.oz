declare
proc {Primos Sol }
   P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 P11 P12 P13 P14 P15 P16 P17 P18   
in
   Sol = [P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 P11 P12 P13 P14 P15 P16 P17 P18]

   %Dominio
   Sol::: 2#7

   %Restriccion de dominio
   {ForAll Sol
     proc{$ X }
       X\=:4
       X\=:6
     end
   }

   %Restricciones de propagacion
   P1*P5*100+P2*P5*10+P3*P5 =: P6*1000+P7*100+P8*10+P9
   P1*P4*100+P2*P4*10+P3*P4 =: P10*1000+P11*100+P12*10+P13
  
        1000*P6 +100*P7 +10*P8 +P9
   +   (1000*P10+100*P11+10*P12+P13)*10
   =: 10000*P14+1000*P15+100*P16+10*P17+P18

   %Distribucion
   {FD.distribute ff Sol}
end
{ExploreOne Primos}