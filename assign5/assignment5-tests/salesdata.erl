-module(salesdata).
-include("salesdata.hrl").
-export_type([salesdata/0]).

-type salesdata() :: #store{} | #group{}.
