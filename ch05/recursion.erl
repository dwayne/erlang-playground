-module(recursion).
-export([len/1]).

len(L) ->
    len_helper(L, 0).

len_helper([], Acc) ->
    Acc;
len_helper([_|T], Acc) ->
    len_helper(T, Acc + 1).
