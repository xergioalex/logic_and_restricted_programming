declare
fun {Queens N}
   proc {$ Row}
      L1N ={MakeTuple c N}  
      LM1N={MakeTuple c N}
   in 
      {FD.tuple queens N 1#N Row}
      {For 1 N 1 proc {$ I}
                    L1N.I=I LM1N.I=~I
                 end}
      {FD.distinct Row}
      {FD.distinctOffset Row LM1N}
      {FD.distinctOffset Row L1N}
      {FD.distribute generic(value:mid) Row}
   end 
end

{ExploreOne {Queens 8}}




