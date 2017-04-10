-module(count_matching).
-export([count_matching/2,count_matching/3]).

-spec count_matching (fun((T) -> boolean()), list(T)) -> non_neg_integer().

count_matching(Pred,Lst) -> count_matching(Pred,Lst,0).
count_matching(Pred,[],N) -> N;
count_matching(Pred,[H|T],N) -> case Pred(H) of
                                      true -> count_matching(Pred,T,N+1);
									  false -> count_matching(Pred,T,N)
								 end.