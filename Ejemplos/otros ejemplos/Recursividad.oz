%%
% Realizar
% Escriba el aloritmo para iprimir la n-esima fila del triangulo de pascal
%                1
%              1   1
%             1  2  1
%           1  3  3  1
%          1  4  6  4  1
%
%       1 3 3 1 0
%       0 1 3 3 1
%       1 4 6 4 1 Result
%%

/*
declare
fun {Pascal N}
   if N == 1 then
      [1]
   else
      local L in
	 L = {Pascal N-1}
      {AddList %% Suma la Lista
       {ShiftLeft L} %% Desplaza a la izquierda la lista 13310
       {ShiftRight L}
      }%% Desplaza a la derecha la lista 01331
      end
   end
end

fun {ShiftRight L} 0|L end

Recorremos toda la lista hasta llegar a nil para agregar el 0 y haceer ShiftLeft
fun {ShiftLeft L}
   case L of H|T then
      H|{ShiftLeft T}
   else
      [0]
   end
end

fun {AddList L1 L2}
   case L1 of H1|T1 then
      case L2 of H2|T2 then
	 H1 + H2|{AddList T1 T2}
      end
   else
      nil
   end
end

{Browse {Pascal 28}}
*/
/*
declare
fun {Fib N}
   if N == 0 orelse N == 1 then
		1
		else
		{Fib N-1} + {Fib N-2}
   end
end

{Browse {Fib 20}}
*/

declare
fun {Fib N}
   case N
   of 0 then 1
      [] 1 then 1
   else
      {Fib N-1} + {Fib N-2}
   end
end

{Browse {Fib 20}}