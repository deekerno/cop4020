-module(concat).
-export([concat/1]).

-spec concat(Lists :: [[T]]) -> [T].
concat([]) -> [];
concat([H|T]) -> H++concat(T).