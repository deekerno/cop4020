-module(substaddr).
-export([substaddr/3]).
-include("salesdata.hrl").
-import(salesdata, [store/2, group/2]).

-spec substaddr(salesdata:salesdata(), string(), string()) -> salesdata:salesdata().

substaddr({group,Gname,Members},New,Old) -> #group{gname = Gname,members = [substaddr(M,New,Old) || M <- Members]};

substaddr({store,Address,Amounts},New,Old) -> case Address=:=Old of 
                                              true -> #store{address = New,amounts =Amounts};
                                              false -> #store{address = Address, amounts = Amounts}
											  end.
