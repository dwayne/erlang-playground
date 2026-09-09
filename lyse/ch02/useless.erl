-module(useless).
-export([add/2, hello/0, greet_and_add_two/1]).

add(A, B) ->
    A + B.

%% Shows greetings.
%% io:format/1 is the standard function used to output text.
hello() ->
    io:format("Hello, world!~n").

greet_and_add_two(X) ->
    hello(),
    add(X, 2).

%% Compile
%%
%% compile:file(useless).
%% compile:file(useless, [debug_info, export_all]).
%%
%% c(useless).
%% c(useless, [debug_info, export_all]).
