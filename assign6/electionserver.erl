%University of Central Florida
%COP4020: Spring 2017
%Group: That Rushing Water Sound You Hear in the Walls of CB2

-module(electionserver).
-export([start/0, vote/2, results/1]).

start() -> spawn(fun()-> process([])end).

process(List) -> receive {From,results} -> From ! {lists:sort(List)},
                                           process(List);
                         {From,vote,Candidate} -> NewList = votedin(Candidate,List),
                                                  From ! {ok}, process(NewList)
                 end.

vote(Pid,Candidate) -> Pid ! {self(),vote,Candidate},
                       receive {ok} -> ok end.
					   
results(Pid) -> Pid ! {self(),results},
                receive {List} -> List end.

votedin(X,[]) -> [{X,1}];
votedin(Candidate,[{Candid,Votes}|T]) -> case Candidate =:= Candid of
                                              true -> [{Candid,Votes+1}] ++ T;
											  false ->[{Candid,Votes}] ++ votedin(Candidate,T)
                                         end.