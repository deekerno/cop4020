-module(logger).
-export([start/0]).

start() -> spawn(fun() -> mserver([])end).

mserver(Entries) ->
    receive {Pid,log,Entry} -> Pid ! {self(),logged}, mserver(Entries++[Entry]);
	        {Pid,fetch} -> Pid ! {self(),log_is,Entries}, mserver(Entries)
    end.
	
log(Entry,Entries) -> Entries++Entry.