declare
proc {Wedd Nb}
   %Antes del in Se pueden declarar variables de todo tipo y hasta porcesos
   Gruops     =  [ [anne cathy eve fran ida]
		   [paul rob stan vern wally]
		   [mon tue wen thu fri] ]
   %% anee 1#5 = 1
   %% paul 1#5 = 1 Significa que se casaron el lunes. 
   %% mon 1#5 =1
   % Propiedades -  me coloca las variables una por una para asignar dominio
   Properties = {FoldR Groups Append nil}
   proc {Partition Group}
      {FD.distintic {Map Group fun {$ P} Nb.P end}}
   end
in