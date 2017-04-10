-module(var).
-export([start/1]).

start(Value) -> spawn(fun() -> compute(Value)end).

compute(Value) ->
     receive {assign,NewVal} -> compute(NewVal);
	         {Pid,fetch} -> Pid ! {value,Value}, compute(Value)
     end.