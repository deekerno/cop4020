%University of Central Florida
%COP4020: Spring 2017
%Group: That Rushing Water Sound You Hear in the Walls of CB2

-module(barrier).
-export([start/1]).

start(Size) -> spawn(fun() -> server(Size,[])end).

server(Size,PidList) -> receive {Pid,done} -> Pid ! {self(),ok},
                                              case Size of
                                                   1 -> Pid ! {self(),continue},
                                                        message(PidList),
                                                        server(Size-1,PidList);
                                                   _ -> server(Size-1,PidList++[Pid])
                                              end;
						  
                                {Pid,how_many_running} -> Pid ! {self(),number_running_is,Size},
                                                          server(Size,PidList)
                        end.
   
message([]) -> ok;
message([Pid|PidList]) -> Pid ! {self(),continue},
                          message(PidList).