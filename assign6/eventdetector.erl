%University of Central Florida
%COP4020: Spring 2017
%Group: That Rushing Water Sound You Hear in the Walls of CB2

-module(eventdetector).
-export([start/2]).

start(InitialState,Fun) -> spawn(fun() -> process(InitialState,[],Fun)end).

process(State,List,Fun) -> receive {Pid,add_me} -> Pid ! {added},
                                                   NewList = [Pid]++List,
                                                   process(State,NewList,Fun);
										 
                                   {Pid,add_yourself_to,EDPid} -> EDPid ! {self(),add_me},
                                                                  receive {Added} -> Added end,
                                                                  Pid ! {Added},
                                                                  process(State,List,Fun);
																  
                                   {Pid,state_value} -> Pid ! {value_is,State},
                                                        process(State,List,Fun);
														
                                    Atom -> {NewState,Event} = Fun(State,Atom),
                                                               case Event =:= none of
                                                                    true -> process(NewState,List,Fun);
                                                                    false -> sendEvent(Event,List),
                                                                             process(NewState,List,Fun)
                                                               end
                           end.

sendEvent(_Event,[]) -> ok;
sendEvent(Event,[Pid|PidList]) -> Pid ! Event,
                                  sendEvent(Event,PidList).