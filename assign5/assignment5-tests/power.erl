-module(power).
-export([start/0]).

start() ->
   spawn(fun mserver/0).
   
mserver() ->
   receive {Pid,power,N,M} ->
      Pid ! {answer, power(N,M)},
	  mserver()
   end.

power(N,M) -> math:pow(N,M).